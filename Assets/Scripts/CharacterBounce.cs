using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CharacterBounce : MonoBehaviour
{
    Rigidbody rb;

    private void Start()
    {
        rb = gameObject.GetComponent<Rigidbody>();
    }

    private void Update()
    {
        //Make Earthlings bounce up and down for more visibility.
        transform.Translate(Vector3.up * 4 * Time.deltaTime);
    }

}