using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class CameraController : MonoBehaviour {

	public GameObject GC;
	public GameObject FadeScreen;
	public Image BlackFade; 
	public bool Fade;

	void start(){

	}
	void Update () {
		FadeScreen = GameObject.Find ("Black_Filler");

		if (Fade == true) {
			StartFading ();
		}
	}

	public void StartFading(){
		FadeScreen.GetComponent<FadingScreen> ().StartCoroutine (FadeScreen.GetComponent<FadingScreen> ().ScreenFade ());
		Fade = false;
	}

	public IEnumerator AnimationStart(){
		this.GetComponent<Animator>().Play("Camera_Move",-1,0.0f);
		Fade = true;
		yield return new WaitForSeconds(3);
		this.GetComponent<Animator> ().Play("Stationary",-1,0.0f);
	}
}
