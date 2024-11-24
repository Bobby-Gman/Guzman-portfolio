using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

public class LevelSelector : MonoBehaviour
{
    public GameObject optionsMenu;
    
    public void LoadScene1()
    {
        AudioManager.Instance.PlaySFX("Select");
        SceneManager.LoadScene("Level 1");
        UnpauseGame();
        CloseOptionsMenu();
    }

    public void LoadScene2()
    {
        AudioManager.Instance.PlaySFX("Select");
        SceneManager.LoadScene("Level 2");
        UnpauseGame();
        CloseOptionsMenu();
    }

    public void LoadScene3()
    {
        AudioManager.Instance.PlaySFX("Select");
        SceneManager.LoadScene("Level 3");
        UnpauseGame();
        CloseOptionsMenu();
    }

    public void LoadSceneHub()
    {
        AudioManager.Instance.PlaySFX("Select");
        SceneManager.LoadScene("HubWorld");
        UnpauseGame();
        CloseOptionsMenu();
    }
    
    private void UnpauseGame()
    {
        Time.timeScale = 1f;
        PauseMenu.isPaused = false;
    }

    private void CloseOptionsMenu()
    {
        if (optionsMenu != null)
        {
            optionsMenu.SetActive(false);
        }
    }
}