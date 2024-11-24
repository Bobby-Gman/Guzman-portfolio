using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PlayerSave : MonoBehaviour
{
    public static PlayerSave Instance;

    // The key that is stored in PlayerPrefs for the wincount
    string winKey = "WinCount";

    public int CurrentWinCount
    {
        get { return PlayerPrefs.GetInt(winKey, -1); }
    }

    // Helper field to visualize the win count in the editor
    [SerializeField] private int winCount;

    // Creates a single instance of this class and makes it persist between scenes
    private void Awake()
    {
        if (Instance == null)
        {
            Instance = this;
            DontDestroyOnLoad(gameObject);
            SetWinCount(0);
        }
        else
        {
            Debug.LogWarning("Prevented creating multiple instances of PlayerSave");
            Destroy(this.gameObject);
        }
    }

    // Sets the current win count
    public void SetWinCount(int count)
    {
        PlayerPrefs.SetInt(winKey, count);
        winCount = PlayerPrefs.GetInt(winKey, -1);
    }
}