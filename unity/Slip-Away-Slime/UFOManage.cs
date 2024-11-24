using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using TMPro;

public class UFOManage : MonoBehaviour
{
    public TextMeshProUGUI counter;
    public int pieces;
    
    void Start()
     {
         Reset();
     }
     public void AddPoints( int pointsToAdd )
     {
         pieces += pointsToAdd;
         counter.text = "Pieces: " + pieces.ToString();
     }
     public void Reset()
     {
         pieces = 0;
     }
     
}
