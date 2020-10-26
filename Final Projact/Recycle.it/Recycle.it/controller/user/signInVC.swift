//
//  signInVC.swift
//  Recycle.it
//
//  Created by Nouf aldghaim on 4/13/20.
//  Copyright © 2020 Nouf. All rights reserved.
//

import UIKit
import Firebase
import CodableFirebase

class signInVC: UIViewController {

    @IBOutlet weak var emailField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    
    @IBAction func signIn() {
        
        Networking.signIn2(email: emailField.text!, password: passwordField.text!, success: {
            // success
            self.performSegue(withIdentifier: "signedIn", sender: nil)
        }) {
            //fail
            let alertController = UIAlertController(title: "op", message: "Signed in failed", preferredStyle: .alert)
            alertController.addAction(.init(title: "ok", style: .cancel, handler: nil))
            self.present(alertController, animated: true, completion: nil)
        }
    }

 
}

    



