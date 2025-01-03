using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Respawn : MonoBehaviour
{
    public Transform spawnPoint;
    public float MinDeathHeight;
    public GameObject player;
    // Start is called before the first frame update
    void Start()
    {
        
    }

    // Update is called once per frame
    void Update()
    {
        if(player.transform.position.y < MinDeathHeight)
        {
            player.transform.position = spawnPoint.position;
            AudioManager.Instance.PlaySFX("Player Hurt");
        }
    }
}
