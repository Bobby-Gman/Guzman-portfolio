using UnityEngine;

public class AbilitySystem : MonoBehaviour
{
    public float abilityCooldown = 5f;
    public GameObject abilityEffect;
    public float effectDuration = 2f;  // The duration before the effect is destroyed
    public int attackDamage = 20;
    private float cooldownTimer;

    void Update()
    {
        if (cooldownTimer > 0)
        {
            cooldownTimer -= Time.deltaTime;
            Debug.Log("Ability cooldown: " + cooldownTimer);
        }
    }

    public void UseAbility(HealthSystem target)
    {
        if (cooldownTimer <= 0 && target != null)
        {
            cooldownTimer = abilityCooldown;
            target.TakeDamage(attackDamage);

            if (abilityEffect)
            {
                GameObject effectInstance = Instantiate(abilityEffect, transform.position, Quaternion.identity);
                Destroy(effectInstance, effectDuration);  // The effect will be destroyed after effectDuration seconds
            }
        }
    }
}
