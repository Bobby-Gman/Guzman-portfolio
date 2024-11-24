using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class NewPlayerMovement : MonoBehaviour
{
    private float horizontalInput;
    private float forwardInput;
    private Transform cam;
    private float turnSmoothVelocity;
    public float speed = 6f;
    public float turnSmoothTime = 0.1f;
    private bool hasSpeedBoost = false;
    public float speedBoostAmount = 15f;

    private Rigidbody rb;

    void Start()
    {
        Cursor.lockState = CursorLockMode.Locked;
        Cursor.visible = false;
        cam = Camera.main.transform;
        rb = GetComponent<Rigidbody>();
        rb.freezeRotation = true;

        hasSpeedBoost = PlayerPrefs.GetInt("HasSpeedBoost", 0) == 1;
    }

    void Update()
    {
        horizontalInput = Input.GetAxisRaw("Horizontal");
        forwardInput = Input.GetAxisRaw("Vertical");
        Vector3 direction = new Vector3(horizontalInput, 0f, forwardInput).normalized;

        if (hasSpeedBoost && Input.GetKeyDown(KeyCode.LeftShift))
        {
            speed = speedBoostAmount;
        }
        else if (!Input.GetKey(KeyCode.LeftShift))
        {
            speed = 6f;
        }
    }

   void FixedUpdate()
    {
        if (horizontalInput != 0f || forwardInput != 0f)
        {
            float targetAngle = Mathf.Atan2(horizontalInput, forwardInput) * Mathf.Rad2Deg + cam.eulerAngles.y;
            float angle = Mathf.SmoothDampAngle(transform.eulerAngles.y, targetAngle, ref turnSmoothVelocity, turnSmoothTime);
            transform.rotation = Quaternion.Euler(0f, angle, 0f);

            Vector3 moveDir = Quaternion.Euler(0f, targetAngle, 0f) * Vector3.forward;
            rb.MovePosition(transform.position + moveDir * speed * Time.fixedDeltaTime);
        }
    }

    public void AddSpeedBoost(float speedBoostAmount)
    {
        hasSpeedBoost = true;

        PlayerPrefs.SetInt("HasSpeedBoost", 1);
    }
}