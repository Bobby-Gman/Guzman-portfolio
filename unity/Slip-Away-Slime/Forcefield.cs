using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using TMPro;
public class Forcefield : MonoBehaviour
{
    public float pushForce = 5f;
    public float pushRadius = 5f;
    public float pushCooldown = 5f;
    public TextMeshProUGUI cooldownText;

    private bool isCooldown = false;
    private float cooldownTimer = 0f;

    private void Update()
    {
        if (Input.GetKeyDown(KeyCode.E) && !isCooldown)
        {
            PushEnemies();
            isCooldown = true;
            cooldownTimer = pushCooldown;
        }

        if (isCooldown)
        {
            cooldownTimer -= Time.deltaTime;
            if (cooldownTimer <= 0f)
            {
                isCooldown = false;
                cooldownTimer = 0f;
            }
            cooldownText.text = "Cooldown: " + Mathf.Ceil(cooldownTimer).ToString();
        }
        else
        {
            cooldownText.text = "";
        }
    }

    private void PushEnemies()
    {
        Collider[] colliders = Physics.OverlapSphere(transform.position, pushRadius);
        foreach (Collider collider in colliders)
        {
            if (collider.CompareTag("Enemy"))
            {
                Vector3 direction = collider.transform.position - transform.position;
                direction.y = 0f; 
                collider.GetComponent<Rigidbody>().AddForce(direction.normalized * pushForce, ForceMode.Impulse);
            }
        }
    }

    private void OnDrawGizmosSelected()
    {
        Gizmos.color = Color.yellow;
        Gizmos.DrawWireSphere(transform.position, pushRadius);
    }
}