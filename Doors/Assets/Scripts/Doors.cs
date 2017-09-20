using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Doors : MonoBehaviour 
{

	public GameObject GC;
	public GameObject Door;
	public GameObject CC;

	public bool RotationBool;
	public Transform target;
	public int TotalLocks;
	public int UnLockedLocks;
	public bool LockCheckVar;
	public BoxCollider Box_Collider;



	void Start () 
	{
		
	}

	void Update()
	{
		Door = GameObject.FindGameObjectWithTag ("Door");
		CC = GameObject.FindGameObjectWithTag ("MainCamera");
		GC = GameObject.Find ("GameController");
		RotationCheck ();

		if (Input.GetMouseButtonDown (0) && UnLockedLocks == TotalLocks) {
			Ray ray = Camera.main.ScreenPointToRay (Input.mousePosition);
			RaycastHit hit;
			if (Physics.Raycast (ray, out hit)) {
				RotationBool = true;
			}

		}

		if(RotationBool == true){
			this.transform.Rotate (new Vector3(0,90,0)*Time.deltaTime);
			GC.gameObject.GetComponent<GameController> ().TimerStop ();
			GC.gameObject.GetComponent<GameController> ().HideInstructions ();
			StartCoroutine (wait ());
		} 
	}

	public void RotationCheck(){

		if(this.transform.rotation.eulerAngles.y > 90){
			RotationBool = false;
			this.transform.eulerAngles.y.Equals(90);
		}
	}

	public void AddLock(){
		TotalLocks++;
	}

	public void UnlockLock(){
		GC.GetComponent<GameController> ().CodeTimer = 0;
		GC.GetComponent<GameController> ().playUnLockSound ();
		UnLockedLocks++;
	}

	bool LockCheck(){
		if (UnLockedLocks >= TotalLocks) {
			return true;
		}
		return false;
	}


	IEnumerator wait(){
		yield return new WaitForSeconds (1);
		CC.GetComponent<CameraController>().StartCoroutine(CC.GetComponent<CameraController>().AnimationStart());
		yield return new WaitForSeconds (3);
		Debug.Log ("Calling Doorunlocked from the Doors script");
		GC.GetComponent<GameController> ().DoorUnlocked ();
		Destroy (Door);
	}
}

