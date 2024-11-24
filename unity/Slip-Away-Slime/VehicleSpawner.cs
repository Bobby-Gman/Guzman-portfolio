using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class VehicleSpawner : MonoBehaviour
{
     public GameObject Vehicle;     
    public float MinSpawnDelay = 3f;   
    public float MaxSpawnDelay = 5f;  

    void Start()
    {
        StartCoroutine(SpawnObjects());
    }

    IEnumerator SpawnObjects()
    {
        while (true)
        {
            float spawnDelay = Random.Range(MinSpawnDelay, MaxSpawnDelay);
            yield return new WaitForSeconds(spawnDelay);

            Instantiate(Vehicle, transform.position, transform.rotation);
        }
    }
}