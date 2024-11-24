using UnityEngine;
using UnityEngine.AI;

public class PieceMovement : MonoBehaviour
{
    public float detectionRadius = 10f;
    private NavMeshAgent navMeshAgent;
    private Transform target;

    void Start()
    {
        navMeshAgent = GetComponent<NavMeshAgent>();
        FindNewTarget();
    }

    void Update()
    {
        if (target)
        {
            navMeshAgent.SetDestination(target.position);

            // If the target is destroyed (e.g. health <= 0), find a new target
            if (target.GetComponent<HealthSystem>().CurrentHealth <= 0)
            {
                FindNewTarget();
            }
        }
        else
        {
            FindNewTarget(); // Find a new target if the current target is null
        }
    }

    void FindNewTarget()
    {
        // Detect player pieces within a certain radius
        Collider[] hitColliders = Physics.OverlapSphere(transform.position, detectionRadius);
        float closestDistance = detectionRadius;
        Transform closestTarget = null;

        foreach (var hitCollider in hitColliders)
        {
            // Check if the detected piece is a player piece
            if (hitCollider.CompareTag("Enemy"))
            {
                float distanceToTarget = Vector3.Distance(transform.position, hitCollider.transform.position);
                if (distanceToTarget < closestDistance)
                {
                    closestDistance = distanceToTarget;
                    closestTarget = hitCollider.transform;
                }
            }
        }

        target = closestTarget;

        if (target == null)
        {
            Debug.Log("No player pieces found!");
        }
    }
}
