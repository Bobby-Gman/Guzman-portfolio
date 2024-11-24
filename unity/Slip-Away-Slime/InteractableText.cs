using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using TMPro;
public class InteractableText : MonoBehaviour
{
    public GameObject panelPrefab; 
    public float displayDuration = 2f; 

    private bool isDisplaying; 
    private float displayTime; 
    private GameObject currentPanel; 

    private void OnTriggerEnter(Collider other)
    {
        if (!isDisplaying && other.CompareTag("Player"))
        {
            isDisplaying = true;
            displayTime = Time.time;
            currentPanel = Instantiate(panelPrefab, transform.position, Quaternion.identity);
        }
    }

    private void OnTriggerStay(Collider other)
    {
        if (isDisplaying && other.CompareTag("Player") && currentPanel != null)
        {
            currentPanel.SetActive(true);
            StartCoroutine(HidePanel());
        }
    }

    private IEnumerator HidePanel()
    {
        yield return new WaitForSeconds(displayDuration);
        if (currentPanel != null)
        {
            currentPanel.SetActive(false);
            isDisplaying = false;
            Destroy(currentPanel.gameObject);
        }
    }
}