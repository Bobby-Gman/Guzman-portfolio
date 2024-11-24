using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ShieldBash : MonoBehaviour
{
    public float damage = 20f;
    public float stunDuration = 2f;

    public void ActivateShieldBash(GameObject enemy)
    {
        enemy.GetComponent<HealthSystem>().TakeDamage((int)damage);
        enemy.AddComponent<StunEffect>().Initialize(stunDuration);
    }
}