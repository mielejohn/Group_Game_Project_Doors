using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Doors : MonoBehaviour 
{
	public bool startRotationFlag=false;
	public Transform target;
	public float speed;

	//New Code
	public Animation DoorOpening;

	void Start () 
	{
		//New Code
		if (DoorOpening.isPlaying) {
			DoorOpening.Stop ();
		}
	}

	void Update()
	{
		float step = speed * Time.deltaTime;
		transform.position = Vector3.MoveTowards (transform.position, target.position, step);
		//Old Code
		/*if(startRotationFlag==true){
			Debug.Log ("RotationStart");
			this.transform.Rotate (new Vector3(0,90,0));

			if (target.rotation.y == 90.00) {
				Debug.Log ("Rotation hits 90");
				startRotationFlag=false;
				Debug.Log ("startRotation is set to false");

			}
		} */
	}

	void OnMouseUp()
	{
		Debug.Log ("OnMouseUp");
		startRotationFlag=true;

		//New Code
		DoorOpening.Play ();
		DoorOpening.Stop ();
	}

}

