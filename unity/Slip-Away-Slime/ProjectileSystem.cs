using UnityEngine;
using UnityEngine.UI;

public class ProjectileSystem : MonoBehaviour
{
    public int ammoCount = 5;
    public GameObject projectilePrefab;
    public Transform projectileSpawnPoint;

    void Start()
    {
        UpdateAmmoBar();
    }

    void Update()
    {
        if (Input.GetMouseButtonDown(0) && ammoCount > 0)
        {
            Shoot();
        }
    }

    void Shoot()
    {
        Instantiate(projectilePrefab, projectileSpawnPoint.position, projectileSpawnPoint.rotation);
        ammoCount--;
        UpdateAmmoBar();
    }

    void UpdateAmmoBar()
    {
        
    }
}
