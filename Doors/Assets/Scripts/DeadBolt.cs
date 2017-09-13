using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class DeadBolt : MonoBehaviour {

	public GameObject DoorScript;
	public Collider DeadBoltCollider;

	void Start () {
		DoorScript = GameObject.FindGameObjectWithTag ("Door");
		DoorScript.GetComponent<Doors> ().AddLock ();
		DeadBoltCollider = GetComponent<Collider> ();
		this.transform.parent = DoorScript.transform;
	}

	void Update () {
		if (Input.GetMouseButtonDown (0)) {
			Ray ray = Camera.main.ScreenPointToRay (Input.mousePosition);
			RaycastHit hit;
			if (DeadBoltCollider.Raycast (ray, out hit, 100.0f)) {
				DoorScript.GetComponent<Doors> ().UnlockLock();
			}
		}	
	}
}
