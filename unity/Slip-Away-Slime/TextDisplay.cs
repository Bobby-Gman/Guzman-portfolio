using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using TMPro;
public class TextDisplay : MonoBehaviour
{
    public float displayDuration = 3f;

    private void Start()
    {
        StartCoroutine(ShowText());
    }

    private IEnumerator ShowText()
    {
        yield return new WaitForSeconds(displayDuration);
        gameObject.SetActive(false);
    }
}