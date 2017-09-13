using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class GameController : MonoBehaviour {

	//public GameObject PlainWall;
	public GameObject BeginningDoor;
	public GameObject PlainDoor;
	public GameObject PlainWoodDoor;

	public GameObject DoorSpawn;
	//public GameObject WallSpawn;
	public GameObject DeadBoltSpawn;
	public GameObject HandleLockSpawn;
	//public GameObject SecurityLock_WallSection_Spawn;
	public GameObject SecurityLock_DoorSection_Spawn;


	//Lock Items
	public int DoorPicker;
	public int LockPicker;
	public GameObject DeadBolt;
	public GameObject HandleLock;
	//public GameObject SecurityLock_Wall;
	public GameObject SecurityLock_Door;

	void Start () {
		//GameObject WallI = Instantiate(PlainWall);
		//WallI.gameObject.transform.position = WallSpawn.transform.position;
		SecurityLock_DoorSection_Spawn = GameObject.Find ("SecurityLock_DoorSection_Spawn");
		//StartingDoor ();
		DoorChoice ();
		//LockChoice ();
	}

	void Update () {

		if (GameObject.FindGameObjectWithTag ("Door") == null) {
			Door_Choice ();
		}
	}

	public void Door_Choice(){
		DoorChoice ();

	}

	public void StartingDoor(){
		GameObject StarterDoorI = Instantiate (BeginningDoor);
		StarterDoorI.gameObject.transform.position = DoorSpawn.transform.position;
	}

	public void DoorChoice(){
		DoorPicker = Random.Range (1, 3);
		//DoorPicker = 3;


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
	}


	public void LockChoice(){
		//LockPicker = Random.Range (1, 3);
		LockPicker = 3;
		DeadBoltSpawn = GameObject.Find ("DeadBoltSpawn");
		HandleLockSpawn = GameObject.Find ("HandleLockSpawn");
		//SecurityLock_WallSection_Spawn = GameObject.Find ("SecurityLock_WallSection_Spawn");
		//SecurityLock_DoorSection_Spawn = GameObject.Find ("SecurityLock_DoorSection_Spawn");


		switch (LockPicker) {

		case 1:
			GameObject DeadBoltI = Instantiate (DeadBolt);
			DeadBoltI.gameObject.transform.position = DeadBoltSpawn.transform.position;
			break;

		case 2:
			GameObject HandleLockI = Instantiate (HandleLock);
			HandleLockI.gameObject.transform.position = HandleLockSpawn.transform.position;
			break;

		case 3:
			//GameObject SecurityLockWallI = Instantiate (SecurityLock_Wall);
			//SecurityLockWallI.gameObject.transform.position = SecurityLock_WallSection_Spawn.transform.position;
			//GameObject SecurityLockDoorI = Instantiate (SecurityLock_Door);
			//SecurityLockDoorI.gameObject.transform.position = SecurityLock_DoorSection_Spawn.transform.position;
			SpawnSecurityLock();
			break;

		case 4:

			break;
		}
	}

	public void SpawnSecurityLock(){
		GameObject SecurityLockDoorI = Instantiate (SecurityLock_Door);
		SecurityLockDoorI.gameObject.transform.position = SecurityLock_DoorSection_Spawn.transform.position;
	}
}


