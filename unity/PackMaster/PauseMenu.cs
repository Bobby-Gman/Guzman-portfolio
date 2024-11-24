using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

public class PauseMenu : MonoBehaviour
{
    public GameObject pauseMenu;
    public GameObject settingsPanel;
    public static bool isPaused = false;
    public AudioManager audioManager;

    private void Start()
    {
        if (audioManager == null)
        {
            audioManager = FindObjectOfType<AudioManager>();
        }
    }

    public void PauseGame()
    {
        if (isPaused) ResumeGame();

        pauseMenu.SetActive(true);
        Time.timeScale = 0f;
        isPaused = true;
        audioManager.PlaySFX(audioManager.buttonClickSFX);
    }

    public void ResumeGame()
    {
        pauseMenu.SetActive(false);
        Time.timeScale = 1f;
        isPaused = false;
        audioManager.PlaySFX(audioManager.buttonClickSFX);
    }

    public void OpenSettings()
    {
        settingsPanel.SetActive(true);
        VolumeSettings.Instance.OnSettingsPanelOpened();
        audioManager.PlaySFX(audioManager.buttonClickSFX);
    }

    public void CloseSettings()
    {
        settingsPanel.SetActive(false);
        if (audioManager != null)
        {
            audioManager.PlaySFX(audioManager.buttonClickSFX);
        }
        else
        {
            Debug.LogError("AudioManager is null.");
        }
    }

    public void GoToMainMenu()
    {
        Time.timeScale = 1f;
        if (GameController.instance != null)
        {
            GameController.instance.GoToMainMenu();
        }
        else
        {
            Debug.LogError("GameController instance is null.");
        }
        audioManager.PlaySFX(audioManager.buttonClickSFX);
    }

    public void QuitGame()
    {
        Application.Quit();
        audioManager.PlaySFX(audioManager.buttonClickSFX);
    }
}
