using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using TMPro;

public class DashPickUp : MonoBehaviour
{
    public float speedBoostAmount = 2f;
    public AudioClip pickupSound;
    public float rotationSpeed = 100f;

    private void OnTriggerEnter(Collider other)
    {
        

        if (other.CompareTag("Player"))
        {
            AudioManager.Instance.PlaySFX("Pickup");
            NewPlayerMovement playerMovement = other.GetComponent<NewPlayerMovement>();
            if (playerMovement != null)
            {
                playerMovement.AddSpeedBoost(speedBoostAmount);
            }

            if (pickupSound != null)
            {
                AudioSource.PlayClipAtPoint(pickupSound, transform.position);
            }

            Destroy(gameObject);
        }
    }

    private void Update()
    {
        transform.Rotate(0f, rotationSpeed * Time.deltaTime, 0f);
    }
}