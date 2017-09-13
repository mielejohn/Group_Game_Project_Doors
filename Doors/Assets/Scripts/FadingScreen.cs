using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class FadingScreen : MonoBehaviour {

	//public GameObject Blackfade;

	void Start () {
		
	}

	void Update () {
		
	}

	public IEnumerator ScreenFade(){
		this.GetComponent<Animator> ().Play ("FadingScreenAnimation", -1, 0.0f);
		yield return new WaitForSeconds (3);
		this.GetComponent<Animator> ().Play ("Opaque", -1, 0.0f);
	}
}
