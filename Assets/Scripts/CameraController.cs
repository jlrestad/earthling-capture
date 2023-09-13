using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CameraController : MonoBehaviour
{
    public GameObject player;
    public float damping = 1;
    private Vector3 offset; //distance between player and camera

    private void Start()
    {
        //Get the distance for the offset.
        offset = transform.position - player.transform.position;
    }

    private void LateUpdate()
    {
        //Set camera to players position plus the offset distance.
        //transform.position = player.transform.position + offset;

        transform.LookAt(player.transform.position, Vector3.up);

        Vector3 desiredPosition = player.transform.position + offset;
        Vector3 position = Vector3.Lerp(transform.position, desiredPosition, Time.deltaTime);
        //transform.position = position;
        //transform.localPosition = Vector3.MoveTowards(transform.position, desiredPosition, Time.deltaTime);

        //transform.RotateAround(player.transform.position, Vector3.up, damping * Time.deltaTime);
    }

}
