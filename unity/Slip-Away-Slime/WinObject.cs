using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class WinObject : MonoBehaviour
{
   public GameObject winScreen;
    public void OnTriggerEnter(Collider other)
    {
        if (other.CompareTag("Player"))
        {
           ShowWinScreen();
           AudioManager.Instance.StopMusic();
           AudioManager.Instance.PlaySFX("Pickup");
        }
    }

    void ShowWinScreen()
    {
        winScreen.SetActive(true);
    }
}
