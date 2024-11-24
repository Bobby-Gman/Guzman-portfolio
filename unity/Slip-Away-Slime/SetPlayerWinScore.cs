using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

public class SetPlayerWinScore : MonoBehaviour
{
     public GameObject winScreen;
    public bool isMouseLocked = true;

    private void OnTriggerEnter(Collider obj)
    {
        if (obj.gameObject.CompareTag("Player"))
        {
            PlayerSave.Instance.SetWinCount(PlayerSave.Instance.CurrentWinCount + 1);

            if (PlayerSave.Instance.CurrentWinCount >= 3)
            {
                Time.timeScale = 0f; 
                winScreen.SetActive(true); 
                AudioManager.Instance.PlayMusic("Win Music");

                if (isMouseLocked) 
                {
                    Cursor.lockState = CursorLockMode.None; 
                    Cursor.visible = true;
                }
            }
            else
            {
                SceneManager.LoadScene(1); 
            }
        }
    }

    public void RestartGame() 
    {
        Time.timeScale = 1f; 
        SceneManager.LoadScene("MainMenu");
        AudioManager.Instance.StopMusic();

        if (isMouseLocked) 
        {
            Cursor.lockState = CursorLockMode.None; 
            Cursor.visible = true;
        }
    }

    public void QuitGame() 
    {
        Application.Quit();
    }
}