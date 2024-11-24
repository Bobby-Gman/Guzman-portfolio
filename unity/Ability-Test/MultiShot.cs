using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class MultiShot : MonoBehaviour
{
    public GameObject arrowPrefab;
    public float damage = 15f;
    public int arrowCount = 5;

    public void FireArrows()
    {
        for (int i = 0; i < arrowCount; i++)
        {
            var arrow = Instantiate(arrowPrefab, transform.position, Quaternion.Euler(0, i * 10 - (arrowCount * 5), 0));
            arrow.GetComponent<Arrow>().Initialize(damage);
        }
    }
}