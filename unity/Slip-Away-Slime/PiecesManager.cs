using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PiecesManager : MonoBehaviour
{
    [SerializeField] private List<UFOPickup> collectibles;
    [SerializeField] private UFOManage scoreManager;
    public GameObject objectToAppear;
    // Start is called before the first frame update
     private void Start()
     {
         foreach ( var collectible in collectibles )
         {
             collectible.Collected += OnCollectibleCollected;
         }
     }
     private void OnCollectibleCollected(UFOPickup collectible)
     {
         scoreManager.AddPoints( collectible.PointsToAdd );
         collectibles.Remove( collectible );
 
         if( collectibles.Count == 4 )
         {
            objectToAppear.SetActive(true);
         }
     }
}
