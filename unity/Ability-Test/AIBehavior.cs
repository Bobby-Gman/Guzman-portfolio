using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.AI;


public class AIBehaviour : MonoBehaviour
{
    public enum PieceType { Player, Enemy }
    public PieceType pieceType;
    public float detectionRadius = 10f;
    public float attackRange = 5f;

    private NavMeshAgent navMeshAgent;
    private AbilitySystem abilitySystem;
    private HealthSystem healthSystem;
    private Transform target;

    protected virtual void Start()
    {
        navMeshAgent = GetComponent<NavMeshAgent>();
        abilitySystem = GetComponent<AbilitySystem>();
        healthSystem = GetComponent<HealthSystem>();

        FindNewTarget();
    }

    void Update()
    {
        if (target)
        {
            // Attack if in range and the target is not of the same type
            if (Vector3.Distance(transform.position, target.position) <= attackRange &&
                target.GetComponent<HealthSystem>().CurrentHealth > 0 &&
                target.tag != gameObject.tag)
            {
                abilitySystem.UseAbility(target.GetComponent<HealthSystem>());
            }

            // Check if the target is destroyed or of the same type, then find a new target
            if (target.GetComponent<HealthSystem>().CurrentHealth <= 0 || target.tag == gameObject.tag)
            {
                FindNewTarget();
            }
        }
        else
        {
            // Consistently look for a new target if there isn't currently one
            FindNewTarget();
        }

        // Make sure there is always a target to move towards
        if(target)
        {
            navMeshAgent.SetDestination(target.position);
        }
    }

    void FindNewTarget()
    {
        Collider[] hitColliders = Physics.OverlapSphere(transform.position, detectionRadius);
        Transform closestTarget = null;
        float closestDistance = detectionRadius + 1f;

        foreach (var hitCollider in hitColliders)
        {
            if (hitCollider.gameObject != gameObject && hitCollider.tag != gameObject.tag &&
               (pieceType == PieceType.Player && hitCollider.CompareTag("Enemy") ||
                pieceType == PieceType.Enemy && hitCollider.CompareTag("Player")))
            {
                float distance = Vector3.Distance(transform.position, hitCollider.transform.position);
                if (distance < closestDistance)
                {
                    closestTarget = hitCollider.transform;
                    closestDistance = distance;
                }
            }
        }

        target = closestTarget;

        if (target == null)
        {
            Debug.Log("No target found!");
        }
    }

    void OnDrawGizmosSelected()
    {
        Gizmos.color = Color.red;
        Gizmos.DrawWireSphere(transform.position, attackRange);
    }
}