using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class SecurityLock_Door_Section : MonoBehaviour {

	public GameObject DoorScript;
	public Collider SecurityLock_Door_Collider;

	void Start () {
		DoorScript = GameObject.FindGameObjectWithTag ("Door");
		//DoorScript = GameObject.Find("Door_01(Clone)");
		DoorScript.GetComponent<Doors> ().AddLock ();
		SecurityLock_Door_Collider = GetComponent<Collider> ();
		this.transform.parent = DoorScript.transform;
	}

	void Update () {
		if (Input.GetMouseButtonDown (0)) {
			Ray ray = Camera.main.ScreenPointToRay (Input.mousePosition);
			RaycastHit hit;
			if (SecurityLock_Door_Collider.Raycast (ray, out hit, 100.0f)) {
				DoorScript.GetComponent<Doors> ().UnlockLock();
			}
		}	
	}
}
