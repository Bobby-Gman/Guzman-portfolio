using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class HealingWave : MonoBehaviour
{
    public float healingAmount = 20f;
    public float healingRadius = 5f;

    public void CastHealingWave()
    {
        Collider[] hitColliders = Physics.OverlapSphere(transform.position, healingRadius);
        foreach (var hitCollider in hitColliders)
        {
            if (hitCollider.CompareTag("Player")) // Adjust this to the tag of your allied units
            {
                var healthSystem = hitCollider.GetComponent<HealthSystem>();
                healthSystem.TakeDamage((int)-healingAmount); // Negative damage to heal
            }
        }
    }
}