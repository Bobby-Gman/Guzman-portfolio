using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

public class MoveToLevel : MonoBehaviour
{
    [SerializeField] private int level;

    // When the player collides with this object, they're sent to the specified level (build index)
    private void OnTriggerEnter(Collider obj)
    {
        if (obj.gameObject.CompareTag("Player"))
        {
            SceneManager.LoadScene(level);
        }
    }
}