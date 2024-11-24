using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

public class EndGameScript : MonoBehaviour
{
    public GameObject hiddenObject;

    void Start()
    {
        hiddenObject.SetActive(false);
    }

    void Update()
    {
        bool hasCollectedAll = true;
        for (int i = 0; i < 3; i++)
        {
            if (PlayerPrefs.GetInt("Collectable" + i, 0) == 0)
            {
                hasCollectedAll = false;
                break;
            }
        }

        if (hasCollectedAll)
        {
            hiddenObject.SetActive(true);
        }
    }
}
