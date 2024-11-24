using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Arrow : MonoBehaviour
{
    private float damage;

    public void Initialize(float dmg)
    {
        damage = dmg;
    }

    void Update()
    {
        transform.Translate(Vector3.forward * 10 * Time.deltaTime); // Modify speed as needed
    }

    void OnTriggerEnter(Collider other)
    {
        if (other.CompareTag("Enemy") || other.CompareTag("Player"))
        {
            other.GetComponent<HealthSystem>().TakeDamage((int)damage);
            Destroy(gameObject);
        }
    }
}
