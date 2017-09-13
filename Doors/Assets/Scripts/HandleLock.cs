using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class HandleLock : MonoBehaviour {

	public GameObject DoorScript;
	public Collider HandleLockCollider;

	void Start () {
		DoorScript = GameObject.FindGameObjectWithTag ("Door");
		DoorScript.GetComponent<Doors> ().AddLock ();
		HandleLockCollider = GetComponent<Collider> ();
		this.transform.parent = DoorScript.transform;
	}

	void Update () {
		if (Input.GetMouseButtonDown (0)) {
			Ray ray = Camera.main.ScreenPointToRay (Input.mousePosition);
			RaycastHit hit;
			if (HandleLockCollider.Raycast (ray, out hit, 100.0f)) {
				DoorScript.GetComponent<Doors> ().UnlockLock();
			}
		}	
	}
}
