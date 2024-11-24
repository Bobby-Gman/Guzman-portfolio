using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ShadowStrike : MonoBehaviour
{
    public float damage = 50f;
    public float teleportDistance = 5f;

    public void PerformShadowStrike(GameObject enemy)
    {
        transform.position = enemy.transform.position + enemy.transform.forward * -teleportDistance;
        enemy.GetComponent<HealthSystem>().TakeDamage((int)damage);
    }
}