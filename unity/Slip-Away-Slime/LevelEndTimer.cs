using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using TMPro;

public class LevelEndTimer : MonoBehaviour
{
    public GameObject objectToAppear; 
    public TextMeshProUGUI timerText; 
    private float timer = 60f; 
    public bool startTimerOnLoad = true; 

    void Start()
    {
        if(startTimerOnLoad)
        {
            enabled = true; 
        }
    }

    void Update()
    {
        timer -= Time.deltaTime; 
        if (timer <= 0f)
        {
            objectToAppear.SetActive(true); 
            timerText.text = "0.00"; 
            enabled = false; 
        }
        else
        {
            timerText.text = timer.ToString("F2"); 
        }
    }   
}
