using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using TMPro;

public class End : MonoBehaviour
{
    public GameObject endPanel;
    void Start()
    {
        
    }

    void Update()
    {
        
    }

    public void LoseGame()
    {
        endPanel.SetActive(true);
        endPanel.transform.GetChild(0).GetComponent<TextMeshProUGUI>().text = "Game Over";
    }

    public void WinGame()
    {
        endPanel.SetActive(true);
        endPanel.transform.GetChild(0).GetComponent<TextMeshProUGUI>().text = "Game Win";
    }
}
