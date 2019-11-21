//
//  Gmail.swift
//  BuClubApp
//
//  Created by Max Gogats on 11/21/19.
//  Copyright © 2019 Gogats. All rights reserved.
//

import Foundation
import UIKit
import GoogleSignIn

class Gmail: UIViewController {
    
    
    
    @IBOutlet var signIn: UIButton!
    // [START viewcontroller_vars]
    /* @IBOutlet weak var signInButton: GIDSignInButton!
     @IBOutlet weak var signOutButton: UIButton!
     @IBOutlet weak var disconnectButton: UIButton!
     @IBOutlet weak var statusText: UILabel!*/
     // [END viewcontroller_vars]
     // [START viewdidload]
     override func viewDidLoad() {
       super.viewDidLoad()

       GIDSignIn.sharedInstance()?.presentingViewController

       // Automatically sign in the user.
       GIDSignIn.sharedInstance()?.restorePreviousSignIn()

       // [START_EXCLUDE]
        /*NotificationCenter.default.addObserver(self,
           selector: #selector(GIDSignIn.receiveToggleAuthUINotification(_:)),
           name: NSNotification.Name(rawValue: "ToggleAuthUINotification"),
           object: nil)*/

      // statusText.text = "Initialized Swift app..."
       //toggleAuthUI()
       // [END_EXCLUDE]
     }
    
        @IBAction func gSignInAction(_ sender: Any) {
        GIDSignIn.sharedInstance()?.signIn()
    }
}
