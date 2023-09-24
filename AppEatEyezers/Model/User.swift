//
//  User.swift
//  AppEatEyezers
//
//  Created by Nursultan Yelemessov on 20/09/2023.
//

import Foundation

struct User : Codable {
    
    var firstName : String = ""
    var lastName : String = ""
    var email : String = ""
    var birthDate = Date()
    var isExtraNapkinRequested = false
    var isFrequentRefills = false
    
}
