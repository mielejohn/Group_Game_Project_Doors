using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Doors : MonoBehaviour 
{

	public GameObject GC;
	public GameObject Door;
	//public DoorPrefab DP;
	public GameObject CC;

	public bool RotationBool;
	public Transform target;
	//public float speed;
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
		//GC.GetComponent<GameController> ().DoorChoice ();
		//GC.GetComponent<GameController> ().LockChoice ();

		Door.transform.DetachChildren();
		Destroy (GameObject.FindGameObjectWithTag ("Lock"));
		Destroy (Door);
		//yield return new WaitForSeconds (2);
		//GC.GetComponent<GameController> ().Door_Choice ();
	}

	/*void onDestroy(){
		GC.GetComponent<GameController> ().Door_Choice ();
	}*/
}

