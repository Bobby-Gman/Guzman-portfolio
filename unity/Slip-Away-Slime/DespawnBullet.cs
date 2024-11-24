using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class DespawnBullet : MonoBehaviour
{
     public float despawnTime = 2f; 

    private float startTime;

    void Start()
    {
        startTime = Time.time;
    }

    void Update()
    {
        if (Time.time - startTime >= despawnTime)
        {
            Destroy(gameObject);
        }
    }
}