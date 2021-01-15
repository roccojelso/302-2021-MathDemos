using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class LerpDemo : MonoBehaviour {

    public GameObject objectStart;
    public GameObject objectEnd;

    [Range(-1, 2)] public float percent = 0;


	// Use this for initialization
	void Start () {
		
	}
	
	// Update is called once per frame
	void Update () {

        transform.position = Vector3.Lerp(objectStart.transform.position, objectEnd.transform.position, percent);


	}

    private void OnValidate()
    {

        transform.position = AnimMath.Lerp(objectStart.transform.position, objectEnd.transform.position, percent);

    }
}
