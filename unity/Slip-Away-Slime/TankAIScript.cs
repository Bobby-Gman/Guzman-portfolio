using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.AI;
public class TankAIScript : MonoBehaviour
{
    public Transform player;
    public Transform firingPoint; 
    public float shootingRange = 20f;
    public float shootingIntervalMin = 3f; 
    public float shootingIntervalMax = 7f; 
    public float collisionRange = 5f;
    public GameObject projectilePrefab; 
    public float projectileSpeed = 20f; 

    private NavMeshAgent agent;
    private float nextShootTime = 0f;

    void Start()
    {
        agent = GetComponent<NavMeshAgent>();
        SetNextShootTime();
    }

    void Update()
    {
        float distanceToPlayer = Vector3.Distance(transform.position, player.position);

        if (distanceToPlayer <= shootingRange && Time.time >= nextShootTime)
        {
            Shoot();
            SetNextShootTime();
        }
        else
        {
            agent.SetDestination(player.position);
        }
    }

    void Shoot()
    {
        Debug.Log("Shooting at Player");

        GameObject projectile = Instantiate(projectilePrefab, firingPoint.position, Quaternion.identity);

        Quaternion tankRotation = transform.rotation;

        projectile.transform.rotation = Quaternion.Euler(90f, tankRotation.eulerAngles.y, 0f);

        Vector3 direction = player.position - firingPoint.position;

        projectile.transform.position = firingPoint.position;

        Rigidbody projectileRigidbody = projectile.GetComponent<Rigidbody>();
        projectileRigidbody.AddForce(direction.normalized * projectileSpeed, ForceMode.VelocityChange);

        AudioManager.Instance.PlaySFX("Tank");
    }

    void SetNextShootTime()
    {
        nextShootTime = Time.time + Random.Range(shootingIntervalMin, shootingIntervalMax);
    }
}