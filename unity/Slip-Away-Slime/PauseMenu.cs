using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

public class PauseMenu : MonoBehaviour
{
     public GameObject pauseMenu;
    public static bool isPaused = false;

    private void Start()
    {
        AudioManager audioManager = FindObjectOfType<AudioManager>();
        if (audioManager != null)
        {
            audioManager.PlayMusic(SceneManager.GetActiveScene().name + " Music");
        }
    }

    void Update()
    {
        if (Input.GetButtonDown("Pause"))
        {
            if (isPaused)
            {
            }
            else
            {
                PauseGame();
            }
        }
    }

    public void PauseGame()
    {
        pauseMenu.SetActive(true);
        Time.timeScale = 0f;
        isPaused = true;
        UnlockMouse();
        AudioManager.Instance.PlaySFX("Select");
    }

    public void ResumeGame()
    {
        AudioManager.Instance.PlaySFX("Select");
        pauseMenu.SetActive(false);
        Time.timeScale = 1f;
        isPaused = false;
        AudioManager audioManager = FindObjectOfType<AudioManager>();
        if (audioManager != null)
        {
            audioManager.PlayMusic(SceneManager.GetActiveScene().name + " Music");
        }
        LockMouse();
    }

    public void GoToMainMenu()
    {
        AudioManager.Instance.PlaySFX("Select");
        Time.timeScale = 1f;
        SceneManager.LoadSceneAsync("MainMenu");
        AudioManager.Instance.StopMusic();
    }

    public void QuitGame()
    {
        AudioManager.Instance.PlaySFX("Select");
        Application.Quit();
    }

    void LockMouse()
    {
        Cursor.lockState = CursorLockMode.Locked;
        Cursor.visible = false;
    }

    void UnlockMouse()
    {
        Cursor.lockState = CursorLockMode.None;
        Cursor.visible = true;
    }
}