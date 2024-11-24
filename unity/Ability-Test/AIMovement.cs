using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.AI;


public class AIMovement : MonoBehaviour
{
    public enum PieceType { Player, Enemy }
    public PieceType pieceType;
    public float detectionRadius = 100f;

    private NavMeshAgent navMeshAgent;
    private Transform target;

    void Start()
    {
        navMeshAgent = GetComponent<NavMeshAgent>();
        FindNewTarget();
    }

    void Update()
    {
        if (target && target.GetComponent<HealthSystem>().CurrentHealth > 0 && target.tag != gameObject.tag)
        {
            navMeshAgent.SetDestination(target.position);
        }
        else
        {
            FindNewTarget();
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

    public Transform CurrentTarget
    {
        get { return target; }
    }
}