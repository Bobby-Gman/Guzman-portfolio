using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class AIAttack : MonoBehaviour
{
    private AIMovement aiMovement;
    private AbilitySystem abilitySystem;
    private FireballAbility fireballAbility; // Added reference to FireballAbility
    public float attackRange = 5f;
    public float fireballCooldown = 5f; // Added cooldown for fireball ability
    private float fireballTimer; // Timer to keep track of cooldown

    void Start()
    {
        aiMovement = GetComponent<AIMovement>();
        abilitySystem = GetComponent<AbilitySystem>();
        fireballAbility = GetComponent<FireballAbility>(); // Initialize FireballAbility reference
        fireballTimer = fireballCooldown; // Initialize the timer
    }

    void Update()
    {
        fireballTimer -= Time.deltaTime; // Decrease the timer over time

        if (aiMovement.CurrentTarget)
        {
            float distance = Vector3.Distance(transform.position, aiMovement.CurrentTarget.position);
            if (distance <= attackRange)
            {
                // Melee or close-range attack
                if (aiMovement.CurrentTarget.GetComponent<HealthSystem>().CurrentHealth > 0)
                {
                    abilitySystem.UseAbility(aiMovement.CurrentTarget.GetComponent<HealthSystem>());
                }

                // Fireball ability
                if (fireballTimer <= 0) // Check if the fireball ability is off cooldown
                {
                    fireballAbility.CastFireball(aiMovement.CurrentTarget.position);
                    fireballTimer = fireballCooldown; // Reset the timer
                }
            }
        }
    }
}