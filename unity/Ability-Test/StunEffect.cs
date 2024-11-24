using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class StunEffect : MonoBehaviour
{
    private float countdown;

    public void Initialize(float duration)
    {
        countdown = duration;
    }

    void Update()
    {
        if (countdown > 0)
        {
            countdown -= Time.deltaTime;
        }
        else
        {
            Destroy(this);
        }
    }

    // Implement the logic to disable the enemy's movement and attack while stunned
}