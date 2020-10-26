//
//  CompanyVC.swift
//  Recycle.it
//
//  Created by Nouf aldghaim on 4/15/20.
//  Copyright © 2020 Nouf. All rights reserved.
//

import UIKit

class CompanyVC: UIViewController {

    @IBOutlet weak var companyNameFeild: UITextField!
    @IBOutlet weak var recyclingItemFeild: UITextField!
    @IBOutlet weak var emailCompanyFeild: UITextField!
    @IBOutlet weak var passwordFeild: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func joinUs(_ sender: Any) {
        let company = Company(companyName: companyNameFeild.text!, recyclingItem:
            recyclingItemFeild.text!, emailCompany: emailCompanyFeild.text!)
        Networking.createItem(company, inCollection: "company") {
            
        }
        
       // Networking.Company(user: company, password: passwordFeild.text!, success: {
        
            self.performSegue(withIdentifier: "join", sender: nil)
}


}


