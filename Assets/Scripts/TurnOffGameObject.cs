using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class TurnOffGameObject : MonoBehaviour
{
    public ScoreManager scoreManager;
    public DroneController controller;


    private void Start()
    {
        scoreManager = GameObject.Find("Canvas").GetComponent<ScoreManager>();
        controller = GetComponentInParent<DroneController>();
    }

    private void OnTriggerEnter(Collider other)
    {
        if (other.CompareTag("Capture"))
        {
            
            //Add 1 to the score
            scoreManager.score += 1;
            //Add 0.1 to the shield slider
            controller.shipShield += 10;

            other.gameObject.SetActive(false);

        }
    }
}
