using System.Collections;
using System.Collections.Generic;
using UnityEngine;
public class EnemyAIMovement : MonoBehaviour
{
    [SerializeField] private Transform player;
    [SerializeField] private Transform firingPoint;
    [SerializeField] private GameObject projectilePrefab;
    [SerializeField] private float projectileSpeed = 20f;
    [SerializeField] private float shootingRange = 20f;
    [SerializeField] private float shootingInterval = 5f;

    [SerializeField] private float bobHeight = 0.5f; 
    [SerializeField] private float bobSpeed = 1f; 

    private float nextShootTime = 0f;
    private Vector3 originalPosition;

    private void Start()
    {
        originalPosition = transform.position;
    }

    private void Update()
    {
        float distanceToPlayer = Vector3.Distance(transform.position, player.position);

        if (distanceToPlayer <= shootingRange && Time.time >= nextShootTime)
        {
            FaceAwayFromPlayer();
            Shoot();
            nextShootTime = Time.time + shootingInterval;
        }
        else
        {
            
            float bobY = originalPosition.y + Mathf.Sin(Time.time * bobSpeed) * bobHeight;
            transform.position = new Vector3(transform.position.x, bobY, transform.position.z);
        }
    }

    private void FaceAwayFromPlayer()
    {
        Vector3 direction = firingPoint.position - player.position;
        direction.y = 0f; 
        transform.rotation = Quaternion.LookRotation(direction);
    }

    private void Shoot()
    {
        GameObject projectile = Instantiate(projectilePrefab, firingPoint.position, Quaternion.identity);
        Vector3 direction = player.position - firingPoint.position;
        projectile.transform.rotation = Quaternion.LookRotation(direction);
        projectile.transform.Rotate(new Vector3(90, 0, 0)); 
        Rigidbody projectileRigidbody = projectile.GetComponent<Rigidbody>();
        projectileRigidbody.AddForce(direction.normalized * projectileSpeed, ForceMode.VelocityChange);
        AudioManager.Instance.PlaySFX("Robot");
    }

    private void OnDrawGizmosSelected()
    {
        Gizmos.color = Color.yellow;
        Gizmos.DrawWireSphere(transform.position, shootingRange);
    } 
}