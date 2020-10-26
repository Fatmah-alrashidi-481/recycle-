//
//  infoVC.swift
//  Recycle.it
//
//  Created by Nouf aldghaim on 4/7/20.
//  Copyright © 2020 Nouf. All rights reserved.
//

import UIKit

class infoVC: UIViewController {

    @IBOutlet weak var factLabel: UILabel!

     let factSource = FactSource()
    let facts = Facts()
    let badFact = BadFacts()
    override func viewDidLoad() {
        super.viewDidLoad()
     
   
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
    @IBAction func showNewFact(_ sender: Any) {
         factLabel.text = factSource.randomFacts()
              
       
        
        
        
}
    
    @IBAction func showBadFact(_ sender: Any) {
        factLabel.text = facts.randomFact()
    }
    
    @IBAction func badFacts(_ sender: Any) {
        factLabel.text = badFact.randomBad()
        
    }
}
