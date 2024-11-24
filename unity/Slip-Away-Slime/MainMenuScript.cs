using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;
public class MainMenuScript : MonoBehaviour
{
    public string mainMenuMusicName = "MainMenu";

    private void Start()
    {
        AudioManager.Instance.PlayMusic(mainMenuMusicName);
    }

    public void PlayGame()
    {
        SceneManager.LoadScene("Hubworld");
        AudioManager.Instance.PlayMusic("HubWorld");
    }

    public void QuitGame()
    {
        Application.Quit();
    }
}