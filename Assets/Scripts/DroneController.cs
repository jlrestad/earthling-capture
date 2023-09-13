using Cinemachine;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
//using UnityEngine.UIElements;

public class DroneController : MonoBehaviour
{
    [HideInInspector] public Rigidbody rb;
    [HideInInspector] public GameObject damageFX;
    [HideInInspector] public Transform fxParent;

    [Header("STUFF WE NEED")]
    public GameObject beam;
    public GameObject shieldIndicator;
    public float shipShield = 100;
    float yAngle;

    [Header ("SHIP CONTROLS")]
    public float driveSpeed = 75f;
    public float horizontalSpeed = 75f;
    public float verticalSpeed = 75f;
    public float turningControl = 1.3f;
    public float rollControl = 2f;
    public float pitchControl = 2f;
    private int invertUp = 1;
    private int invertForward = 1;


    [Header ("INVERT CONTROLS")]
    //[Space(15)]
    public bool invertVertical;
    public bool invertPitch;

    [Header("CAMERAS")]
    //public GameObject mainCam;
    public GameObject beamCam;

    [Header ("ROTATION RESET")]
    [SerializeField] private float rotationSpeed = 1.0f;
    [SerializeField] private float elapsedTime = 0f;
    [SerializeField] private float returnTime = 2f;

    [HideInInspector] public bool isBouncing;
    ScoreManager scoreManager;

    [ContextMenu ("Reset values to default.")]
    private void ResetToDefault()
    {
        driveSpeed = 75f;
        horizontalSpeed = 75f;
        verticalSpeed = 75f;
        turningControl = 1.3f;
        rollControl = 2f;
        pitchControl = 2f;
        invertUp = 1;
        invertForward = 1;
        invertVertical = false;
        invertPitch = false;
    }

    private void Start()
    {
        //Remove mouse from view
        Cursor.visible = false;
        Cursor.lockState = CursorLockMode.Confined;
        Cursor.lockState = CursorLockMode.Locked;

        //mainCam.SetActive(true);
        beamCam.SetActive(false); //Turn off this camera if it is turned on. Only needed when the beam is used.

        rb = GetComponent<Rigidbody>();

        scoreManager = FindObjectOfType<Canvas>().GetComponent<ScoreManager>();

        shieldIndicator.GetComponent<Slider>().value = shipShield / 100;

        //Set Y inversion
        if (invertVertical)
        {
            invertUp = -1;
        }
        else
        {
            invertUp = 1;
        }

        //Set Pitch inversion
        if (invertPitch)
        {
            invertForward = -1;
        }
        else
        {
            invertForward = 1;
        }

    }

    private void Update()
    {
        //Escape from game in build
        if (Input.GetKey(KeyCode.Escape))
        {
            Application.Quit();
        }


        //SHIELD
        //Update Check
        shieldIndicator.GetComponent<Slider>().value = shipShield / 100;

        if (shipShield <= 0)
        {
            shipShield = 0;

            //Unlock mouse
            Cursor.visible = true;
            Cursor.lockState = CursorLockMode.None;
            
            //Display the game over screen
            scoreManager.loseText.SetActive(true);

            //Stop game from moving
            Time.timeScale = 0;
        }
        if (shipShield > 100)
        {
            shipShield = 100;
        }

        //
        //Update Y inversion
        if (invertVertical) { invertUp = -1; }
        else { invertUp = 1; }

        //
        //Update Pitch inversion
        if (invertPitch) { invertForward = -1; }
        else { invertForward = 1; }

        //
        //INPUTS
        if (!isBouncing)
        {
            // Forward/Backward
            if (Input.GetKey(KeyCode.W)) { transform.Translate(Vector3.forward * driveSpeed * Time.deltaTime); }
            if (Input.GetKey(KeyCode.S)) { transform.Translate(Vector3.back * driveSpeed * Time.deltaTime); }

            // Strafe Left/Right
            if (Input.GetKey(KeyCode.D)) { transform.Translate(Vector3.right * horizontalSpeed * Time.deltaTime); }
            if (Input.GetKey(KeyCode.A)) { transform.Translate(-Vector3.right * horizontalSpeed * Time.deltaTime); }

            // Up/Down
            if (Input.GetButton("Fire1")) { transform.Translate((invertUp) * Vector3.up * verticalSpeed * Time.deltaTime); }
            if (Input.GetButton("Fire2")) { transform.Translate(-(invertUp) * Vector3.up * verticalSpeed * Time.deltaTime); }

            // Roll Left/Right (ROLL)
            if (Input.GetKey(KeyCode.Q)) { transform.Rotate(Vector3.forward * driveSpeed * Time.deltaTime, rollControl); }
            if (Input.GetKey(KeyCode.E)) { transform.Rotate(Vector3.back * driveSpeed * Time.deltaTime, rollControl); }

            // Turn Left/Right (YAW)
            if (Input.GetAxis("Mouse X") > 0) { transform.Rotate(Vector3.up * turningControl * Time.deltaTime, turningControl, Space.Self); }
            if (Input.GetAxis("Mouse X") < 0) { transform.Rotate(Vector3.down * turningControl * Time.deltaTime, turningControl, Space.Self); }

            // Tilt Forward/Backwar (PITCH)
            if (Input.GetKey(KeyCode.R)) { transform.Rotate((invertForward) * Vector3.right *  driveSpeed * Time.deltaTime, pitchControl, Space.Self); }
            if (Input.GetKey(KeyCode.F)) { transform.Rotate((invertForward) * Vector3.left * driveSpeed * Time.deltaTime, pitchControl, Space.Self); }

            // ** TURN OFF THE MOUSE-Y ROATION **   

            //Use beam to abduct.
            if (Input.GetKeyDown(KeyCode.Space))
            {
                //mainCam.SetActive(false);
                beamCam.SetActive(true);

                beam.SetActive(true);
            }

            if (Input.GetKeyUp(KeyCode.Space))
            {
                beamCam.SetActive(false);
                //mainCam.SetActive(true);

                beam.SetActive(false);
            }

            //Reset rotation
            if (Input.GetKey(KeyCode.LeftShift)) 
            {
                StartCoroutine("ResetCameraRotation");
             

                //The y-rotation doesn't reset to World 0!
                //transform.rotation = Quaternion.Euler(0, transform.eulerAngles.y, 0);

                //* THESE ROTATE Y BACK TO WORLD(0,0,0)  No bueno, but can save constructs for later.
                //transform.rotation = Quaternion.AngleAxis(0, new Vector3(transform.rotation.x, yAngle, transform.rotation.z));
                //transform.Rotate(transform.rotation.x, 0, transform.rotation.z);
                //transform.rotation = Quaternion.Euler(0, transform.position.y, 0);
                //transform.rotation = Quaternion.AngleAxis(yAngle, new Vector3(0, yAngle, 0));
                //transform.localRotation = Quaternion.AngleAxis(0, Vector3.zero);
            }
        }
    }


    //RETURN CAMERA ROTATION TO ORIGINAL POSITION OVER A SET TIME
    public IEnumerator ResetCameraRotation()
    { 
        Quaternion targetRotation = Quaternion.Euler(0, transform.eulerAngles.y, 0);

        elapsedTime = 0f; 

        while (elapsedTime < returnTime)
        {
            transform.rotation = Quaternion.Lerp(transform.rotation, targetRotation, elapsedTime / 2.0f * rotationSpeed);
            elapsedTime += Time.deltaTime;
            yield return null; //Wait for next frame
        }

        //Ensure the final rotation is the target rotation.
        transform.rotation = targetRotation;
    }


    //SLIGHTLY BOUNCE BACK WHEN COLLIDING
    private void OnCollisionEnter(Collision collision)
    {
        if (!CompareTag("Capture"))
        {
            //Bounce off of object when colliding.
            float bounce = 100f;
            rb.AddForce(Vector3.Reflect(Vector3.back, collision.contacts[0].normal) * bounce, ForceMode.Impulse);
            isBouncing = true;

            Invoke("StopBounce", 0.1f);
        }

        if (collision.gameObject.layer == 6)
        {
            Instantiate(damageFX, fxParent);

            shipShield -= 10;
            shieldIndicator.GetComponent<Slider>().value = shipShield / 100;

            StartCoroutine("ExplosionOff");
        }
    }

    //TURN OFF PARTICLE EXPLOSION
    IEnumerator ExplosionOff()
    {
        yield return new WaitForSeconds(0.5f);

        for (int i = 0; i < fxParent.childCount; i++)
        {
            fxParent.GetChild(i).transform.gameObject.SetActive(false);
        }
    }

    //ALLOW INPUT AGAIN
    private void StopBounce()
    {
        isBouncing = false;
    }


}
