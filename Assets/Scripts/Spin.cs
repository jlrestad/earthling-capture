using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Spin : MonoBehaviour
{
    [SerializeField] private int degrees = 20;
    public GameObject pivot;

    private void Update()
    {
        transform.RotateAround(pivot.transform.position, Vector3.up, degrees * Time.deltaTime);
    }

    protected void LateUpdate()
    {
        //Lock x and y rotation
        transform.localEulerAngles = new Vector3(0, transform.localEulerAngles.y, 0);
    }

}

