using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;
public class CollectibleScript : MonoBehaviour
{
    public int collectableIndex;
    private void OnTriggerEnter(Collider other) 
    {
        if (other.CompareTag("Player")) 
        {
            SceneManager.LoadScene("HubWorld");
            int collectablesCount = PlayerPrefs.GetInt("CollectablesCount", 0);
            collectablesCount++;
            PlayerPrefs.SetInt("CollectablesCount", collectablesCount);

            PlayerPrefs.SetInt("Collectable" + collectableIndex, 1);

            gameObject.SetActive(false);
        }
    }
}
