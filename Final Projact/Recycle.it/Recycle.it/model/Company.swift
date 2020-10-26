//
//  Company.swift
//  Recycle.it
//
//  Created by Nouf aldghaim on 4/15/20.
//  Copyright © 2020 Nouf. All rights reserved.
//

import Foundation
import Firebase
import CodableFirebase
struct Company: Codable {
    var companyName: String
    var recyclingItem: String
    var emailCompany: String
}
