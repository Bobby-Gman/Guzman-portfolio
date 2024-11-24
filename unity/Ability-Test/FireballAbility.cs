using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class FireballAbility : MonoBehaviour
{
    public GameObject fireballPrefab;
    public GameObject fireAreaPrefab; // Added this prefab for the fire area effect
    public float damage = 30f;

    public void CastFireball(Vector3 targetPosition)
    {
        var fireball = Instantiate(fireballPrefab, transform.position, Quaternion.identity);
        fireball.GetComponent<Fireball>().Initialize(targetPosition, damage, fireAreaPrefab); // Added the fireAreaPrefab parameter
    }
}