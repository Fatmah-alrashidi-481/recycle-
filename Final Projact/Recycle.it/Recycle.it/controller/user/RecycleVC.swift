//
//  RecycleVC.swift
//  Recycle.it
//
//  Created by Nouf aldghaim on 4/5/20.
//  Copyright © 2020 Nouf. All rights reserved.
//

import UIKit
import Firebase

class RecycleVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        Firestore.firestore().collection("Recycling").getDocuments { (snapshot, error) in
            if error == nil {
                
                if snapshot != nil {
            
                }
                
            
      
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
}
}
