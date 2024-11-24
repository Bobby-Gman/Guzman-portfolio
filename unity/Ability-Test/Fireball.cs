using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Fireball : MonoBehaviour
{
    private Vector3 targetPosition;
    private float damage;
    private GameObject fireAreaPrefab; // To store the fire area prefab
    public string enemyTag = "Enemy";

    public void Initialize(Vector3 target, float dmg, GameObject areaPrefab) // Added GameObject parameter for the fire area
    {
        targetPosition = target;
        damage = dmg;
        fireAreaPrefab = areaPrefab; // Set the fire area prefab
    }

    void Update()
    {
        transform.position = Vector3.MoveTowards(transform.position, targetPosition, 10 * Time.deltaTime);
        if (transform.position == targetPosition)
        {
            Collider[] hitEnemies = Physics.OverlapSphere(transform.position, 1f);
            foreach (var enemy in hitEnemies)
            {
                if (enemy.CompareTag(enemyTag)) // Add this check
                {
                    var healthSystem = enemy.GetComponent<HealthSystem>();
                    if (healthSystem != null)
                    {
                        healthSystem.TakeDamage((int)damage);
                    }
                }
            }
            
            Instantiate(fireAreaPrefab, transform.position, Quaternion.identity)
                .GetComponent<FireArea>().Initialize(damage, enemyTag); // Pass the enemy tag to the FireArea script
            
            Destroy(gameObject);
        }
    }
}