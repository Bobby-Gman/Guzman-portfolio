using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Dodge : MonoBehaviour
{
    public float dodgeForce = 10f; 
    public float dodgeCooldown = 0.5f; 
    public float groundDistance = 0.2f; 
    public LayerMask groundMask; 

    private bool isGrounded; 
    private Rigidbody rb; 
    private float lastDodgeTime; 

    private void Start()
    {
        rb = GetComponent<Rigidbody>();
    }

    private void Update()
    {
        isGrounded = Physics.CheckSphere(transform.position, groundDistance, groundMask);

        if (Input.GetKeyDown(KeyCode.Z) && Time.time - lastDodgeTime > dodgeCooldown)
        {
            DodgeLeft();
            lastDodgeTime = Time.time;
        }

        if (Input.GetKeyDown(KeyCode.C) && Time.time - lastDodgeTime > dodgeCooldown)
        {
            DodgeRight();
            lastDodgeTime = Time.time;
        }
    }

    private void DodgeLeft()
    {
        Vector3 dodgeDirection = -transform.right;
        rb.AddForce(dodgeDirection.normalized * dodgeForce, ForceMode.Impulse);
    }

    private void DodgeRight()
    {
        Vector3 dodgeDirection = transform.right;
        rb.AddForce(dodgeDirection.normalized * dodgeForce, ForceMode.Impulse);
    }
}