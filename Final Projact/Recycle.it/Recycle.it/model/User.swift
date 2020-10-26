//
//  User.swift
//  Recycle.it
//
//  Created by Nouf aldghaim on 4/14/20.
//  Copyright © 2020 Nouf. All rights reserved.
//

import Foundation
import Firebase
import CodableFirebase

struct User: Codable{
    var email: String
    var name: String
    var Coupon: Bool
    var age: String
}
struct signIn {
    var email: String
    var password: String
}
