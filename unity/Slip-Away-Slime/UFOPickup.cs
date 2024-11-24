using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using TMPro;

public class UFOPickup : MonoBehaviour
{
    
    [SerializeField] private int pointsToAdd;
    public System.Action<UFOPickup> Collected;
    
    public int PointsToAdd
     {
         get { return pointsToAdd; }
     }
    
    public float bobSpeed = 0.5f; 
    public float bobHeight = 0.5f; 
    private float startingY; 
    void Start()
    {
        startingY = 57f; 
    }
    private void OnTriggerEnter(Collider collider)
    {
        Collected?.Invoke(this);
        AudioManager.Instance.PlaySFX("Pickup");
        Destroy(gameObject);
    }
    void Update()
    {
        float newY = startingY + Mathf.Sin(Time.time * bobSpeed) * bobHeight;
        transform.position = new Vector3(transform.position.x, newY, transform.position.z);
        
        transform.Rotate(0f, 50f * Time.deltaTime, 0f);
    }
}