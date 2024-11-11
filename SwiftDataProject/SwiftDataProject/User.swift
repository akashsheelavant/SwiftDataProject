//
//  User.swift
//  SwiftDataProject
//
//  Created by Akash Sheelavant on 11/11/24.
//

import Foundation
import SwiftData

@Model
class User {
    var name: String
    var city: String
    var joiningDate: Date
    
    init(name: String, city: String, joiningDate: Date) {
        self.name = name
        self.city = city
        self.joiningDate = joiningDate
    }
}
