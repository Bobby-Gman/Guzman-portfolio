using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

public class WinScreen : MonoBehaviour
{
    public GameObject objectToSpawn;
    public float spawnDelay = 300f; 
    public GameObject winScreen;

    private float timeAtLastSpawn;
    private bool hasSpawnedObject = false;

    private void Start() 
    {
        timeAtLastSpawn = Time.time;
    }

    private void Update() 
    {
        if (!hasSpawnedObject && Time.time - timeAtLastSpawn > spawnDelay) {
            GameObject newObject = Instantiate(objectToSpawn);
            DontDestroyOnLoad(newObject);
            hasSpawnedObject = true;
        }
    }

    private void OnTriggerEnter(Collider other) 
    {
        if (hasSpawnedObject && other.CompareTag("Player")) 
        {
            Time.timeScale = 0f; 
            winScreen.SetActive(true); 
            AudioManager.Instance.PlayMusic("Win Music");
        }
    }

    public void RestartGame() 
    {
        Time.timeScale = 1f; 
        SceneManager.LoadScene("MainMenu");
        AudioManager.Instance.StopMusic();
    }

    public void QuitGame() 
    {
        Application.Quit();
    }
}