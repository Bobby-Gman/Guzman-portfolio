using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class GummiDeath : MonoBehaviour
{
    public GameObject loseScreen;
    public bool gamePaused = false;
    
    void OnCollisionEnter(Collision collision)
    {
        if(collision.gameObject.CompareTag("Enemy"))
        {
            gameObject.SetActive(false);
            ShowLoseScreen();
            AudioManager.Instance.StopMusic();
            AudioManager.Instance.PlaySFX("Player Death");
            PauseGame();
        }
    }

    void ShowLoseScreen()
    {
        loseScreen.SetActive(true);
    }

    void PauseGame()
    {
        Time.timeScale = 0f;
        gamePaused = true;
    }
}