using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class FireArea : MonoBehaviour
{
    public float damagePerSecond = 5f;
    public float duration = 5f;
    private string enemyTag; 

    private float countdown;
    private float damageTimer = 1f;

    public void Initialize(float damage, string tag)
    {
        damagePerSecond = damage;
        enemyTag = tag; 
        countdown = duration;
    }

    void Update()
    {
        if (countdown > 0)
        {
            countdown -= Time.deltaTime;
            damageTimer -= Time.deltaTime;

            if (damageTimer <= 0)
            {
                Collider[] enemiesInFireArea = Physics.OverlapSphere(transform.position, 1f);
                foreach (var enemy in enemiesInFireArea)
                {
                    if (enemy.CompareTag(enemyTag)) 
                    {
                        var healthSystem = enemy.GetComponent<HealthSystem>();
                        if (healthSystem != null)
                        {
                            healthSystem.TakeDamage((int)damagePerSecond);
                        }
                    }
                }

                damageTimer = 1f;
            }
        }
        else
        {
            Destroy(gameObject); // Ensure that the fire area is destroyed when the countdown reaches 0
        }
    }
}