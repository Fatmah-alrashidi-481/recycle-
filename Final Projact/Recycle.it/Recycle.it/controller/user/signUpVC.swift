//
//  signUpVC.swift
//  Recycle.it
//
//  Created by Nouf aldghaim on 4/13/20.
//  Copyright © 2020 Nouf. All rights reserved.
//

import UIKit
import Firebase
import CodableFirebase
class signUpVC: UIViewController {
    
    @IBOutlet weak var passwordField: UITextField!
    @IBOutlet weak var emailField: UITextField!
    @IBOutlet weak var nameField: UITextField!
    @IBOutlet weak var age2Field: UITextField!
    
    override func viewDidLoad() {
        
    }
    
    @IBAction func signUp()
    {
       
        let user = User(email: emailField.text!, name: nameField.text!, Coupon: false, age: age2Field.text!)
        
        
        Networking.signUp2(user: user, password: passwordField.text! ) {
        
            // What will you do if the user has signed up successfully?
            // put it here
            self.performSegue(withIdentifier: "signedUp", sender: nil)
           
        }
         
    }


}
