//
//  DetailVC.swift
//  Recycle.it
//
//  Created by Nouf aldghaim on 4/5/20.
//  Copyright © 2020 Nouf. All rights reserved.
//

import UIKit
import MapKit
import Firebase
import CodableFirebase

class DetailVC: UIViewController {
    
    @IBAction func map1(_ sender: Any) {
       
        guard let url = URL(string: "https://goo.gl/maps/boonQ2zYJYXPYYe58") else { return }
        UIApplication.shared.open(url)
    }
    
    @IBAction func map2(_ sender: Any) {
       guard let url = URL(string: "https://goo.gl/maps/ozS5NRWmPuMKnKDL7") else { return }
             UIApplication.shared.open(url)
        
    }
  
 


    @IBAction func phone1(_ sender: Any) {
  guard let url = URL(string: "tel://23262072") else {
    let alertContrller = UIAlertController(title: "Opps", message: "You can't make a phone call in ths device", preferredStyle: .alert)
    alertContrller.addAction(UIAlertAction(title: "ok", style: .cancel, handler: nil))
    self.present(alertContrller, animated: true, completion: nil)
        
    return
        }
  UIApplication.shared.open(url)
    }
    
    @IBAction func phone2(_ sender: Any) {
        guard let url = URL(string: "tel://23262072") else {
          let alertContrller = UIAlertController(title: "Opps", message: "You can't make a phone call in ths device", preferredStyle: .alert)
          alertContrller.addAction(UIAlertAction(title: "ok", style: .cancel, handler: nil))
          self.present(alertContrller, animated: true, completion: nil)
               return
    }
      UIApplication.shared.open(url)
        
        func viewDidLoad() {
        super.viewDidLoad()

        



}
        Firestore.firestore().collection("participant").getDocuments { (snapshot, error) in
              if error == nil {
                        
                        if snapshot != nil {
                    
                        }
                    
              
            }
        }
    
    
}


}
