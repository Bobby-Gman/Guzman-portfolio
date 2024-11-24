using UnityEngine;
using UnityEngine.SceneManagement;

public class AudioManager : MonoBehaviour
{
    public static AudioManager Instance { get; private set; }

    [Header("Audio Sources")]
    [SerializeField] private AudioSource musicSource;
    [SerializeField] private AudioSource sfxSource;

    [Header("Audio Clips")]
    public AudioClip combatMusic;
    public AudioClip menuMusic;
    public AudioClip gameOverMusic;
    public AudioClip buttonClickSFX;
    public AudioClip overworldMusic;
    public AudioClip nodeClickSFX;
    public AudioClip playerAttackSFX;
    public AudioClip enemyAttackSFX;
    public AudioClip enemyDeathSFX;

    private void Awake()
    {
        if (Instance == null)
        {
            Instance = this;
            DontDestroyOnLoad(gameObject);
        }
        else
        {
            Destroy(gameObject);
        }
    }

    private void OnEnable()
    {
        SceneManager.sceneLoaded += OnSceneLoaded;
    }

    private void OnDisable()
    {
        SceneManager.sceneLoaded -= OnSceneLoaded;
    }

    private void OnSceneLoaded(Scene scene, LoadSceneMode mode)
    {
        StopMusic();
        if (scene.name == "MainMenu")
        {
            PlayMusic(menuMusic);
        }
        else if (scene.name == "MapGen")
        {
            PlayMusic(overworldMusic);
        }
        else if (scene.name == "ShopScene")
        {
            PlayMusic(overworldMusic); 
        }
    }

    public void PlaySFX(AudioClip clip)
    {
        if (sfxSource != null && clip != null)
        {
            sfxSource.PlayOneShot(clip);
        }
    }

    public void PlayMusic(AudioClip clip)
    {
        if (musicSource != null && musicSource.clip != clip)
        {
            musicSource.clip = clip;
            musicSource.Play();
        }
    }

    public void StopMusic()
    {
        if (musicSource != null)
        {
            musicSource.Stop();
        }
    }
}