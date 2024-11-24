using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class HealthSystem : MonoBehaviour
{
    public int maxHealth = 100;
    private int currentHealth;
    public Text healthText;

    void Start()
    {
        currentHealth = maxHealth;
        UpdateHealthUI();
    }

    public virtual void TakeDamage(int damage)
    {
        currentHealth -= damage;
        UpdateHealthUI();
        if (currentHealth <= 0)
        {
            Die();
        }
    }

    private void UpdateHealthUI()
    {
        if (healthText)
        {
            healthText.text = "HP: " + currentHealth;
        }
    }

    private void Die()
    {
        Destroy(gameObject); 
    }

    public int CurrentHealth 
    { 
        get { return currentHealth; } 
    }
}