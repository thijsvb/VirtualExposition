/*============================================================================== 
Copyright (c) 2015-2016 PTC Inc. All Rights Reserved.
Vuforia is a trademark of PTC Inc., registered in the United States and other 
countries.   
==============================================================================*/
using UnityEngine;
using UnityEngine.SceneManagement;
using System.Collections;
using Vuforia;

public class LaadExpositie : MonoBehaviour
{

    #region PUBLIC_METHODS
    public void laadAR()
    {
        ModeConfig.isFullScreenMode = true;
        LoadNextScene();
    }

    public void laadVR()
    {
        ModeConfig.isFullScreenMode = false;
        LoadNextScene();
    }
    #endregion // PUBLIC_METHODS


    #region PRIVATE_METHODS
    private void LoadNextScene()
    {
        SceneManager.LoadScene("Expositie");
    }
    #endregion //PRIVATE_METHODS


    #region MONOBEHAVIOUR_METHODS

    void Update()
    {
#if UNITY_ANDROID
        // On Android, the Back button is mapped to the Esc key
        if (Input.GetKeyUp(KeyCode.Escape))
        {
            // Exit app
            Application.Quit();
        }
#endif
    }
    #endregion // MONOBEHAVIOUR_METHODS
}
