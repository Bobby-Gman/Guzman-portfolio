using UnityEngine;
using UnityEngine.SceneManagement;
using UnityEngine.UI;
using UnityEngine.Audio;

public class MainMenuController : MonoBehaviour
{
    [SerializeField] GameObject settingsPanel;
    [SerializeField] GameObject inventoryPanel;
    [SerializeField] GameObject background;
    [SerializeField] GameObject bG;
    private AudioManager audioManager;

    private void Start()
    {
        audioManager = FindObjectOfType<AudioManager>();

        if (audioManager == null)
        {
            Debug.LogError("AudioManager not found in the scene.");
        }
    }

    public void StartGame()
    {
        if (audioManager != null)
        {
            audioManager.PlaySFX(audioManager.buttonClickSFX);
        }
        SceneManager.LoadScene("MapGen");
    }

    public void OpenSettings()
    {
        if (settingsPanel != null)
        {
            if (audioManager != null)
            {
                audioManager.PlaySFX(audioManager.buttonClickSFX);
            }
            settingsPanel.SetActive(true);
            VolumeSettings.Instance.OnSettingsPanelOpened();
        }

        if (background != null)
        {
            background.SetActive(!background.activeSelf);
        }
    }

    public void CloseSettings()
    {
        if (settingsPanel != null)
        {
            settingsPanel.SetActive(false);
            audioManager.PlaySFX(audioManager.buttonClickSFX);
        }

        if (background != null)
        {
            background.SetActive(!background.activeSelf);
        }
    }

    public void OpenShop()
    {
        if (audioManager != null)
        {
            audioManager.PlaySFX(audioManager.buttonClickSFX);
        }
        SceneManager.LoadScene("ShopScene");
    }

    public void OpenInventory()
    {
        if (inventoryPanel != null)
        {
            if (audioManager != null)
            {
                audioManager.PlaySFX(audioManager.buttonClickSFX);
            }
            inventoryPanel.SetActive(true);
        }

        if (background != null)
        {
            background.SetActive(!background.activeSelf);
        }

        bG.SetActive(!bG.activeSelf);
    }

    public void CloseInventory()
    {
        if (inventoryPanel != null)
        {
            if (audioManager != null)
            {
                audioManager.PlaySFX(audioManager.buttonClickSFX);
            }
            inventoryPanel.SetActive(false);
        }

        if (background != null)
        {
            background.SetActive(!background.activeSelf);
        }

        bG.SetActive(!bG.activeSelf);
    }

    public void QuitGame()
    {
        if (audioManager != null)
        {
            audioManager.PlaySFX(audioManager.buttonClickSFX);
        }
        Application.Quit();
    }
}