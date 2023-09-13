using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Capture : MonoBehaviour
{
    public Rigidbody rb;
    public GameObject center;
    public float force = 1500f;

    private void Start()
    {
        center = GameObject.FindGameObjectWithTag("Center");
    }

    private void OnTriggerEnter(Collider other)
    {
       if (other.CompareTag("Capture"))
        {
            rb = other.GetComponent<Rigidbody>();

            //Vector3.MoveTowards(rb.position, center.transform.position, force * Time.deltaTime);

            rb.AddForce(Vector3.up * force * Time.deltaTime, ForceMode.Impulse);
        }
    }

}
