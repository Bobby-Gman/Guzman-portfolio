using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Audio;
using UnityEngine.UI;
using TMPro;
public class OptionsMenu : MonoBehaviour
{
    [SerializeField] private AudioMixer audioMixer;
    [SerializeField] private TMP_Dropdown resolutionDropdown;
    [SerializeField] private Slider musicSlider;
    [SerializeField] private Slider SFXSlider;

    private Resolution[] resolutions;

    private void Start()
    {
        resolutions = Screen.resolutions;
        resolutionDropdown.ClearOptions();
        List<string> resolutionOptions = new List<string>();
        int currentResolutionIndex = 0;
        for (int i = 0; i < resolutions.Length; i++)
        {
            string resolutionOption = $"{resolutions[i].width}x{resolutions[i].height}";
            resolutionOptions.Add(resolutionOption);
            if (resolutions[i].width == Screen.currentResolution.width && resolutions[i].height == Screen.currentResolution.height)
            {
                currentResolutionIndex = i;
            }
        }
        resolutionDropdown.AddOptions(resolutionOptions);
        resolutionDropdown.value = currentResolutionIndex;
        resolutionDropdown.RefreshShownValue();

        if (PlayerPrefs.HasKey("musicVolume"))
        {
            LoadVolume();
        }
        else
        {
            SetMusicVolume();
            SetSFXVolume();
        }
    }

    public void SetResolution()
    {
        TMP_Dropdown.OptionData selectedOption = resolutionDropdown.options[resolutionDropdown.value];

        string[] values = selectedOption.text.Split('x');
        int width = int.Parse(values[0]);
        int height = int.Parse(values[1]);

        Screen.SetResolution(width, height, Screen.fullScreen);
    }

    public void SetMusicVolume()
    {
        float volume = musicSlider.value;
        audioMixer.SetFloat("Music", volume);
        PlayerPrefs.SetFloat("musicVolume", volume);
    }

    public void SetSFXVolume()
    {
        float volume = SFXSlider.value;
        audioMixer.SetFloat("SFX", volume);
        PlayerPrefs.SetFloat("SFXVolume", volume);
    }

    private void LoadVolume()
    {
        musicSlider.value = PlayerPrefs.GetFloat("musicVolume");
        SFXSlider.value = PlayerPrefs.GetFloat("SFXVolume");
        SetMusicVolume();
        SetSFXVolume();
    }
}