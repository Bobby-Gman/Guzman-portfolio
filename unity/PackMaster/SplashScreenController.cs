using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;
using UnityEngine.UI;

public class SplashScreenController : MonoBehaviour
{
    public float logoDuration = 2f;
    public float splashDuration = 3f;
    public Image logoImage;
    public Image splashImage;
    public Button continueButton;
    public AudioClip logoSoundClip;
    public AudioClip splashMusicClip;
    public AudioClip buttonClickClip;
    private AudioSource audioSource;

    void Start()
    {
        splashImage.gameObject.SetActive(false);
        continueButton.gameObject.SetActive(false);
        audioSource = gameObject.AddComponent<AudioSource>();
        StartCoroutine(ShowLogoThenSplash());
    }

    IEnumerator ShowLogoThenSplash()
    {
        logoImage.canvasRenderer.SetAlpha(0.0f);
        logoImage.gameObject.SetActive(true);
        logoImage.CrossFadeAlpha(1.0f, 1.0f, false);
        audioSource.clip = logoSoundClip;
        audioSource.Play();
        yield return new WaitForSeconds(logoDuration);
        logoImage.CrossFadeAlpha(0.0f, 1.0f, false);
        audioSource.Stop();
        yield return new WaitForSeconds(1.0f);
        logoImage.gameObject.SetActive(false);

        splashImage.gameObject.SetActive(true);
        audioSource.clip = splashMusicClip;
        audioSource.Play();
        continueButton.gameObject.SetActive(true);
    }

    public void OnContinueButtonClicked()
    {
        audioSource.PlayOneShot(buttonClickClip);
        SceneManager.LoadScene("MainMenu");
    }
}