using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class GameController : MonoBehaviour {

	public GameObject BeginningDoor;
	public GameObject PlainDoor;
	public GameObject PlainWoodDoor;
	public GameObject SpecialDoorOne;
	public GameObject SpecialDoorTwo;
	public GameObject SpecialDoorThree;

	public GameObject DoorSpawn;
	public GameObject DeadBoltSpawn;
	public GameObject HandleLockSpawn;
	public GameObject SecurityLock_DoorSection_Spawn;
	public GameObject Clock;


	//Lock Items
	public int DoorPicker;
	public int LockPicker;
	public GameObject DeadBolt;
	public GameObject HandleLock;
	public GameObject SecurityLock_Door;

	public int TotalDoors = 15;
	public int DoorsUnlocked;

	public int Timer;
	public GameObject instructions;

	void Start () {
		//GameObject WallI = Instantiate(PlainWall);
		//WallI.gameObject.transform.position = WallSpawn.transform.position;
		SecurityLock_DoorSection_Spawn = GameObject.Find ("SecurityLock_DoorSection_Spawn");
		//StartingDoor ();
		DoorChoice ();
		//LockChoice ();
		//DoorNumberChoice();
		//Clock.gameObject.GetComponent<Animator>().Play("Stationary",-1,0.0f);
	}

	void Update () {
		if (GameObject.FindGameObjectWithTag ("Door") == null) {
			Door_Choice ();
		}
	}
	public void Door_Choice(){
		SpecialDoor ();
		//DoorChoice ();
	}

	public void StartingDoor(){
		GameObject StarterDoorI = Instantiate (BeginningDoor);
		StarterDoorI.gameObject.transform.position = DoorSpawn.transform.position;
	}

	public void DoorChoice(){
		DoorPicker = Random.Range (1, 3);
		if (DoorsUnlocked > 0) {
			if (DoorsUnlocked == 3 || DoorsUnlocked == 5 || DoorsUnlocked == 12) {
				SpecialDoor ();
			}
			switch (DoorPicker) {

			case 1:
				GameObject DoorI = Instantiate (PlainDoor);
				DoorI.gameObject.transform.position = DoorSpawn.transform.position;
				LockChoice ();
				break;

			case 2:
				GameObject MetalDoorI = Instantiate (PlainWoodDoor);
				MetalDoorI.gameObject.transform.position = DoorSpawn.transform.position;
				LockChoice ();
				break;

			case 3:
				GameObject JailDoorI = Instantiate (PlainDoor);
				JailDoorI.gameObject.transform.position = DoorSpawn.transform.position;
				LockChoice ();
				break;

			case 4:

				break;
			}
		} else {
			GameObject DoorI = Instantiate (PlainDoor);
			DoorI.gameObject.transform.position = DoorSpawn.transform.position;
		}
	}

	public void SpecialDoor(){
		switch (TotalDoors) {

		case 15:
			if (DoorsUnlocked == 3) {
				//Spawn special door 1
				GameObject SpecialDoorOneI = Instantiate (PlainDoor);
				SpecialDoorOneI.gameObject.transform.position = DoorSpawn.transform.position;
				LockChoice ();
			} else {
				if (DoorsUnlocked == 5) {
					//Spawn special door 2
					GameObject SpecialDoorTwoI = Instantiate (PlainDoor);
					SpecialDoorTwoI.gameObject.transform.position = DoorSpawn.transform.position;
					LockChoice ();
				} else {
					if (DoorsUnlocked == 12) {
						//Spawn Special Door 3
						GameObject SpecialDoorThreeI = Instantiate (PlainDoor);
						SpecialDoorThreeI.gameObject.transform.position = DoorSpawn.transform.position;
						LockChoice ();
					}
				}
			}
			break;
		}
	}

	public void LockChoice(){
		DeadBoltSpawn = GameObject.Find ("DeadBoltSpawn");
		HandleLockSpawn = GameObject.Find ("HandleLockSpawn");
		if (DoorsUnlocked >= 1) {
			for (int i = 1; i < 4; i++) {
				switch (i) {

				case 1:
					int DeadboltChoice = Random.Range (1, 20);
					if (DeadboltChoice > 9) {
						GameObject DeadBoltI = Instantiate (DeadBolt);
						DeadBoltI.gameObject.transform.position = DeadBoltSpawn.transform.position;
					}
					break;

				case 2:
					int HandleLockChoice = Random.Range (1, 20);
					if (HandleLockChoice > 10) {
						GameObject HandleLockI = Instantiate (HandleLock);
						HandleLockI.gameObject.transform.position = HandleLockSpawn.transform.position;
					}
					break;

				case 3:
					int SecurityLockChoice = Random.Range (1, 22);
					if (SecurityLockChoice > 12) {
						GameObject SecurityLockDoorI = Instantiate (SecurityLock_Door);
						SecurityLockDoorI.gameObject.transform.position = SecurityLock_DoorSection_Spawn.transform.position;
					}
					break;

				case 4:

					break;
				}
			}
		} else {
			GameObject HandleLockI = Instantiate (HandleLock);
			HandleLockI.gameObject.transform.position = HandleLockSpawn.transform.position;
		}

		if (DoorsUnlocked > 0) {
			StartCoroutine (timer ());
		}
	}

	public IEnumerator timer (){
		Clock.gameObject.GetComponent<Animator>().Play("SecondsTimer",-1,0.0f);
		yield return new WaitForSeconds (11);
		Clock.gameObject.GetComponent<Animator>().Play("Stationary",-1,0.0f);
	}

	public void TimerStop(){
		Clock.gameObject.GetComponent<Animator> ().Play ("Stationary", -1, 0.0f);
	}

	public void DoorUnlocked(){
		Clock.gameObject.GetComponent<Animator>().Play("Stationary",-1,0.0f);
		DoorsUnlocked++;
	}

	public void HideInstructions(){
		instructions.gameObject.SetActive (false);
	}
}