using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class TankShotCleanUp : MonoBehaviour
{
    public float DespawnTime = 5f;
    // Start is called before the first frame update
    void Start()
    {
        
    }

    // Update is called once per frame
    void Update()
    {
       Destroy(this.gameObject, DespawnTime); 
    }

    void OnCollisionEnter(Collision collision)
    {
        if(collision.gameObject.CompareTag("Enemy"))
        {
            Destroy(gameObject);
        }
    }
}
