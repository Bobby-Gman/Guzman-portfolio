using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class FlyController : MonoBehaviour
{
     public float flySpeed = 10f;
    public float flyHeight = 10f;
    public float flyHeightMultiplier = 1f;
    
    private bool isFlying = false;

    private void Update()
    {
        if (Input.GetKeyDown(KeyCode.LeftControl))
        {
            isFlying = !isFlying; // Toggle flying state
            if (isFlying) 
            {
                // Enable flying mode
                GetComponent<Rigidbody>().useGravity = false;
            }
            else 
            {
                // Disable flying mode
                GetComponent<Rigidbody>().useGravity = true;
            }
        }

        if (isFlying)
        {
            // Move the character in the flying direction
            float vertical = Input.GetAxis("Vertical");
            float horizontal = Input.GetAxis("Horizontal");
            Vector3 moveDir = transform.forward * vertical + transform.right * horizontal;
            moveDir.Normalize();
            GetComponent<Rigidbody>().velocity = moveDir * flySpeed;

            // Increase vertical height while holding down space
            if (Input.GetKey(KeyCode.Space))
            {
                Vector3 currentPosition = transform.position;
                currentPosition.y += flyHeight * flyHeightMultiplier * Time.deltaTime;
                transform.position = currentPosition;
            }
        }
    }
}