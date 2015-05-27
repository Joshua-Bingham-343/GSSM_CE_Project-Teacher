//
//  Students.swift
//  Teacher_CE_Project
//
//  Created by csylvester15 on 5/26/15.
//  Copyright (c) 2015 csylvester15. All rights reserved.
//

import Foundation
import UIKit

class Students: NSObject {
    var name: String
    var classof: String
    
    init(name: String, classof: String) {
        self.name = name
        self.classof = classof
        super.init()
    }
}

class Hours: NSObject {
    var date: String
    var number: String
    
    init(date: String, number: String) {
        self.date = date
        self.number = number
        super.init()
    }
}


