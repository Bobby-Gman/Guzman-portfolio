using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Enemyspawn : MonoBehaviour
{
     public GameObject enemyPrefab; 
    public float spawnInterval = 5.0f; 

    private float timer = 0.0f;

    private void Update()
    {
        timer += Time.deltaTime;
        if (timer >= spawnInterval)
        {
            Instantiate(enemyPrefab, transform.position, Quaternion.identity);
            timer = 0.0f;
        }
    }
}