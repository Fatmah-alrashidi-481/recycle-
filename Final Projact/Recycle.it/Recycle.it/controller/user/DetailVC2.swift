//
//  DetailVC2.swift
//  Recycle.it
//
//  Created by Nouf aldghaim on 4/6/20.
//  Copyright © 2020 Nouf. All rights reserved.
//

import UIKit
import MapKit
class DetailVC2: UIViewController {

    
    @IBAction func map1(_ sender: Any) {

          guard let url = URL(string: "https://goo.gl/maps/fLc8raC3jD4LR6M76") else { return }
                        UIApplication.shared.open(url)
        }
        
    @IBAction func map2(_ sender: Any) {
     guard let url = URL(string: "https://goo.gl/maps/KJXkRwjiXBCh5v4a9") else { return }
                UIApplication.shared.open(url)
        
        
    }
    @IBAction func phone1(_ sender: Any) {
        guard URL(string: "tel://23263136") != nil else {
              let alertContrller = UIAlertController(title: "Opps", message: "You can't make a phone call in ths device", preferredStyle: .alert)
              alertContrller.addAction(UIAlertAction(title: "ok", style: .cancel, handler: nil))
              self.present(alertContrller, animated: true, completion: nil)
                   return
        }
    }
    
    @IBAction func phone2(_ sender: Any) {
        guard URL(string: "tel://24613980") != nil else {
              let alertContrller = UIAlertController(title: "Opps", message: "You can't make a phone call in ths device", preferredStyle: .alert)
              alertContrller.addAction(UIAlertAction(title: "ok", style: .cancel, handler: nil))
              self.present(alertContrller, animated: true, completion: nil)
                   return
        }
    }
}
    
    
    
    
    
    
    

    
    
    


        // Do any additional setup after loading the view.
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */


