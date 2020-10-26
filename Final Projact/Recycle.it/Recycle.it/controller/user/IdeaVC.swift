//
//  IdeaVC.swift
//  Recycle.it
//
//  Created by Nouf aldghaim on 4/8/20.
//  Copyright © 2020 Nouf. All rights reserved.
//

import UIKit

class IdeaVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func plastic(_ sender: Any) {
        guard let url = URL(string: "https://pin.it/50XColh") else { return }
                            UIApplication.shared.open(url)
    }
    
    @IBAction func metal(_ sender: Any) {
        guard let url = URL(string: "https://pin.it/1RdL43h") else { return }
                            UIApplication.shared.open(url)
    }
    
    @IBAction func glass(_ sender: Any) {
        guard let url = URL(string: "https://pin.it/6XKh3gs") else { return }
                            UIApplication.shared.open(url)
    }
    
    
    @IBAction func paper(_ sender: Any) {
        guard let url = URL(string: "https://pin.it/32Y4C2A") else { return }
                            UIApplication.shared.open(url)
    }
    
    @IBAction func kids(_ sender: Any) {
        guard let url = URL(string: "https://pin.it/2oHB7on") else { return }
                                   UIApplication.shared.open(url)
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
