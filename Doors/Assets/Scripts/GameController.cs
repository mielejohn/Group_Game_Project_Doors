using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using UnityEngine.SceneManagement;

public class GameController : MonoBehaviour {

	public GameObject BeginningDoor;
	public GameObject PlainDoor;
	public GameObject PlainWoodDoor;
	public GameObject SingleWindowMiddleDoor;
	public GameObject SingleWindowRightDoor;
	public GameObject SpecialDoorOne;
	public GameObject SpecialDoorOneKnob;
	public GameObject SpecialDoorTwo;
	public GameObject SpecialDoorTwoKnob;
	public GameObject SpecialDoorThree;

	public GameObject DoorSpawn;
	public GameObject DeadBoltSpawn;
	public GameObject HandleLockSpawn;
	public GameObject SecurityLock_DoorSection_Spawn;
	public GameObject SpinlockSpawn;
	public GameObject SpinlockBackSpawn;
	public GameObject ElectronicLockSpawn;
	public GameObject SpecialDoor01KnobSpawn;
	public GameObject SpecialDoor02KnobSpawn;
	public GameObject Clock;



	//Lock Items
	public int DoorPicker;
	public int LockPicker;
	public GameObject DeadBolt;
	public GameObject HandleLock;
	public GameObject SecurityLock_Door;
	public GameObject Spinlock;
	public GameObject SpinlockBack;
	public GameObject ElectronicLock;

	public int TotalDoors = 14;
	public int DoorsUnlocked;

	public float Seconds;
	public float CodeTimer;
	public GameObject instructions;
	public GameObject BlackCover;
	public GameObject GameOverUI;
	public GameObject GameFinishedUI;

	public AudioClip Audio;
	public AudioSource source;

	void awake(){
		source = GetComponent<AudioSource>();
	}

	void Start () {
		SecurityLock_DoorSection_Spawn = GameObject.Find ("SecurityLock_DoorSection_Spawn");
		StartingDoor ();
	}

	void Update () {
		if (GameObject.FindGameObjectWithTag ("Door") == null) {
			Door_Choice ();
		}

		if (DoorsUnlocked > 0) {
			CodeTimer += Time.deltaTime;
			if (CodeTimer >= 11) {
				GameOver();
			}
		}
	}
	public void Door_Choice(){
		DoorChoice ();
	}

	public void StartingDoor(){

		Debug.Log("Choosing the StartingDoor");
		GameObject StarterDoorI = Instantiate (BeginningDoor);
		StarterDoorI.gameObject.transform.position = DoorSpawn.transform.position;

		GameObject HandleLockI = Instantiate (HandleLock);
		HandleLockI.gameObject.transform.position = HandleLockSpawn.transform.position;
		BlackCover.GetComponent<Animator> ().Play ("Opaque", -1, 0.0f);
	}

	public void DoorChoice(){
		DoorPicker = Random.Range (1, 5);
		if (DoorsUnlocked > 0) {
			Debug.Log ("Unlocked doors are greater than Zero");
			if (DoorsUnlocked == 3 || DoorsUnlocked == 9 || DoorsUnlocked == 14) {
				Debug.Log ("Unlocked doors is equal to 3 or 9 or 14");
				SpecialDoor ();
			} else {
				Debug.Log("Choosing a door");
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
					GameObject SingleWindowDoorI = Instantiate (SingleWindowMiddleDoor);
					SingleWindowDoorI.gameObject.transform.position = DoorSpawn.transform.position;
					LockChoice ();
					break;

				case 5:
					GameObject SingleRightWindowDoorI = Instantiate (SingleWindowRightDoor);
					SingleRightWindowDoorI.gameObject.transform.position = DoorSpawn.transform.position;
					LockChoice ();
					break;
				} 
			}
		}
	}

	public void SpecialDoor(){
		Debug.Log("About to choose special Door");

			if (DoorsUnlocked == 3) {
				//Spawn special door 1
				GameObject SpecialDoorOneI = Instantiate (SpecialDoorOne);
				SpecialDoorOneI.gameObject.transform.position = DoorSpawn.transform.position;

				GameObject SpecialDoorOneKnobI = Instantiate (SpecialDoorOneKnob);
				SpecialDoorOneKnobI.gameObject.transform.position = SpecialDoor01KnobSpawn.transform.position;
			} else {
				if (DoorsUnlocked == 9) {
					//Spawn special door 2
					GameObject SpecialDoorTwoI = Instantiate (SpecialDoorTwo);
					SpecialDoorTwoI.gameObject.transform.position = DoorSpawn.transform.position;

					GameObject SpecialDoorTwoKnobI = Instantiate (SpecialDoorTwoKnob);
					SpecialDoorTwoKnobI.gameObject.transform.position = SpecialDoor02KnobSpawn.transform.position;
				} else {
					if (DoorsUnlocked == 14) {
						GameObject SpecialDoorThreeI = Instantiate (SpecialDoorThree);
						SpecialDoorThreeI.gameObject.transform.position = DoorSpawn.transform.position;
						//LockChoice ();
					}
				}
			}
		}

	public void LockChoice(){
		DeadBoltSpawn = GameObject.Find ("DeadBoltSpawn");
		HandleLockSpawn = GameObject.Find ("HandleLockSpawn");
		Debug.Log("About to choose Lock");

			for (int i = 1; i < 6; i++) {
				switch (i) {
				case 1:
				Debug.Log ("Case 1");
					int DeadboltChoice = Random.Range (1, 20);
					if (DeadboltChoice > 9) {
						GameObject DeadBoltI = Instantiate (DeadBolt);
						DeadBoltI.gameObject.transform.position = DeadBoltSpawn.transform.position;
					}
					break;

				case 2:
				Debug.Log ("Case 2");
					int HandleLockChoice = Random.Range (1, 20);
					if (HandleLockChoice > 10) {
						GameObject HandleLockI = Instantiate (HandleLock);
						HandleLockI.gameObject.transform.position = HandleLockSpawn.transform.position;
					}
					break;

				case 3:
				Debug.Log ("Case 3");
					int SecurityLockChoice = Random.Range (1, 22);
					if (SecurityLockChoice > 10) {
						GameObject SecurityLockDoorI = Instantiate (SecurityLock_Door);
						SecurityLockDoorI.gameObject.transform.position = SecurityLock_DoorSection_Spawn.transform.position;
					}
					break;

				case 4:
				Debug.Log ("Case 4");
					int SpinLockChoice = Random.Range (1, 20);
					if (SpinLockChoice < 11) {
					GameObject SpinLockBackI = Instantiate (SpinlockBack);
					SpinLockBackI.gameObject.transform.position = SpinlockBackSpawn.transform.position;
					GameObject SpinLockI = Instantiate (Spinlock);
					SpinLockI.gameObject.transform.position = SpinlockSpawn.transform.position;
					}
					break;

			case 5:
				Debug.Log ("Case 5");
					int ElectronicLockChoice = Random.Range (1, 25);
					if (ElectronicLockChoice > 1) {
					Debug.Log ("Electronic lock");
						GameObject ElectronicLockI = Instantiate (ElectronicLock);
						ElectronicLockI.gameObject.transform.position = ElectronicLockSpawn.transform.position;
					}
					break;
				}
			}

		if (DoorsUnlocked > 0) {
			CodeTimer = 0;
			StartCoroutine (timer ());
		}
	}

	public IEnumerator timer (){
		Seconds = 11;		
		Clock.gameObject.GetComponent<Animator>().Play("Stationary",-1,0.0f);
		Clock.gameObject.GetComponent<Animator>().Play("SecondsTimer",-1,0.0f);
		Debug.Log ("About to wait 11 seconds");
		yield return new WaitForSeconds (Seconds);
		Debug.Log ("Just waited 11 seconds");
		Clock.gameObject.GetComponent<Animator>().Play("Stationary",-1,0.0f);
	}

	public void GameOver(){
		BlackCover.GetComponent<Animator> ().Play ("BlackScreen", -1, 0.0f);
		GameOverUI.gameObject.SetActive (true);
	}

	public void gameFinished(){
		BlackCover.GetComponent<Animator> ().Play ("BlackScreen", -1, 0.0f);
		GameFinishedUI.gameObject.SetActive (true);
	}

	public void TimerStop(){
		Clock.gameObject.GetComponent<Animator> ().Play ("Stationary", -1, 0.0f);
	}

	public void DoorUnlocked(){
		Clock.gameObject.GetComponent<Animator> ().Stop();
		Clock.gameObject.GetComponent<Animator> ().Play ("Stationary", -1, 0.0f);
		Debug.Log ("Doors unlocked increased");
		Seconds = 0;
		CodeTimer = 0;
		DoorsUnlocked++;
	}

	public void HideInstructions(){
		instructions.gameObject.SetActive (false);
	}

	public void PlayAgain(){
		SceneManager.LoadScene ("Doors_Main");
		DoorsUnlocked = 0;
		Seconds = 0;
		CodeTimer = 0;
		StartingDoor ();
	}

	public void ExitGame(){
		Application.Quit ();
	}

	public void playUnLockSound(){
		source.Play();
	}
}