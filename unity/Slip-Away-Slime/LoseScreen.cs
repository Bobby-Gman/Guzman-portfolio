using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

public class LoseScreen : MonoBehaviour
{
    private const string pauseInput = "Pause";
    private string activeSceneName;
    private AudioManager audioManager;
    private bool isPaused = true;

    private void Start()
    {
        audioManager = AudioManager.Instance;
        activeSceneName = SceneManager.GetActiveScene().name;
        audioManager.PlayMusic("Lose Music");
        UnlockMouse();
    }

    private void Update()
    {
        if (Input.GetButtonDown(pauseInput))
        {
            if (isPaused)
            {
                ResumeGame();
            }
        }
    }

    public void RestartGame()
    {
        Time.timeScale = 1f;
        SceneManager.LoadScene(SceneManager.GetActiveScene().buildIndex);
        audioManager.StopMusic();
        LockMouse();
    }

    public void QuitGame()
    {
        Time.timeScale = 1f;
        SceneManager.LoadScene("MainMenu");
        audioManager.StopMusic();
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

    void PauseGame()
    {
        Time.timeScale = 0f;
        isPaused = true;
        UnlockMouse();
    }

    void ResumeGame()
    {
        Time.timeScale = 1f;
        isPaused = false;
        LockMouse();
    }

    private void OnDisable()
    {
        audioManager.PlayMusic(activeSceneName + " Music");
    }
}