//
//  DetailVC4.swift
//  Recycle.it
//
//  Created by Nouf aldghaim on 4/6/20.
//  Copyright © 2020 Nouf. All rights reserved.
//

import UIKit
import MapKit
class DetailVC4: UIViewController {

    @IBAction func map1(_ sender: Any) {
      guard let url = URL(string: "https://goo.gl/maps/UNJaivCf4eTT3ukE8") else { return }
                             UIApplication.shared.open(url)
    }
    
 
    @IBAction func map2(_ sender: Any) {
         guard let url = URL(string: "https://goo.gl/maps/KJXkRwjiXBCh5v4a9") else { return }
                             UIApplication.shared.open(url)
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func phone1(_ sender: Any) {
        guard URL(string: "tel://2457 7772") != nil else {
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
