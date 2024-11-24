using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Audio;
using UnityEngine.UI;
using UnityEngine.SceneManagement;

public class VolumeSettings : MonoBehaviour
{
    public static VolumeSettings Instance { get; private set; }

    [SerializeField] private Slider volumeSlider;
    [SerializeField] private Slider musicSlider;
    [SerializeField] private Slider SFXSlider;
    [SerializeField] private AudioMixer audioMixer;

    private void Awake()
    {
        if (Instance == null)
        {
            Instance = this;
            DontDestroyOnLoad(gameObject);
            SceneManager.sceneLoaded += OnSceneLoaded;
        }
        else
        {
            Destroy(gameObject);
        }
    }

    private void Start()
    {
        LoadVolumeSettings();
    }

    private void OnSceneLoaded(Scene scene, LoadSceneMode mode)
    {
        LoadVolumeSettings();
    }

    public void OnSettingsPanelOpened()
    {
        FindSliders();
        LoadVolumeSettings();

        volumeSlider.onValueChanged.AddListener(delegate { SetMasterVolume(); });
        musicSlider.onValueChanged.AddListener(delegate { SetMusicVolume(); });
        SFXSlider.onValueChanged.AddListener(delegate { SetSFXVolume(); });
    }

    private void FindSliders()
    {
        volumeSlider = GameObject.Find("MasterSlider").GetComponent<Slider>();
        musicSlider = GameObject.Find("MusicSlider").GetComponent<Slider>();
        SFXSlider = GameObject.Find("SFXSlider").GetComponent<Slider>();
    }

    private void LoadVolumeSettings()
    {
        if (volumeSlider != null)
        {
            if (PlayerPrefs.HasKey("masterVolume"))
            {
                float masterVolume = PlayerPrefs.GetFloat("masterVolume");
                volumeSlider.value = masterVolume;
            }
            SetMasterVolume();
        }

        if (musicSlider != null)
        {
            if (PlayerPrefs.HasKey("musicVolume"))
            {
                float musicVolume = PlayerPrefs.GetFloat("musicVolume");
                musicSlider.value = musicVolume;
            }
            SetMusicVolume();
        }

        if (SFXSlider != null)
        {
            if (PlayerPrefs.HasKey("SFXVolume"))
            {
                float SFXVolume = PlayerPrefs.GetFloat("SFXVolume");
                SFXSlider.value = SFXVolume;
            }
            SetSFXVolume();
        }
    }

    public void SetMasterVolume()
    {
        if (volumeSlider != null)
        {
            float volume = volumeSlider.value;
            audioMixer.SetFloat("Master", Mathf.Log10(volume) * 20);
            PlayerPrefs.SetFloat("masterVolume", volume);
        }
    }

    public void SetMusicVolume()
    {
        if (musicSlider != null)
        {
            float volume = musicSlider.value;
            audioMixer.SetFloat("Music", Mathf.Log10(volume) * 20);
            PlayerPrefs.SetFloat("musicVolume", volume);
        }
    }

    public void SetSFXVolume()
    {
        if (SFXSlider != null)
        {
            float volume = SFXSlider.value;
            audioMixer.SetFloat("SFX", Mathf.Log10(volume) * 20);
            PlayerPrefs.SetFloat("SFXVolume", volume);
        }
    }
}