using System.Collections;
using System.Collections.Generic;
using TMPro;
using UnityEngine;

public class ScoreManager : MonoBehaviour
{
    public TextMeshProUGUI scoreText;
    public GameObject loseText;
    public GameObject winText;
    public int score = 00;
    public int goal = 15;

    private void Update()
    {
        scoreText.text = "EARTHLINGS: 0" + score + "/" + goal;

        if (score >= goal)
        {
            winText.SetActive(true);

            //Unlock mouse
            Cursor.visible = true;
            Cursor.lockState = CursorLockMode.None;

            //Stop game from moving
            Time.timeScale = 0;
        }
    }
}
