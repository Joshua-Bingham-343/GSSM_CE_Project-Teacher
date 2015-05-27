//
//  placeholderModel.swift
//  GSSM_CE_Project
//
//  Created by jbingham15 on 5/25/15.
//  Copyright (c) 2015 Bingham&Sylvester. All rights reserved.
//

import Foundation

class Model {
    var usernames = ["kcoley"]
    var password = ["mobileapps"]
    var currentUsername:String = ""
    
    func checkUsername(username:String) ->Bool {
        if(contains(usernames, username)){
            return true
        }
        else{
            return false
        }
    }
    
    func checkPassword(passwd:String) -> Bool {
        if(contains(password, passwd)){
            return true
        }
        else{
            return false
        }
    }
    
    func storeUsername(name:String) {
        currentUsername = name
    }
    
    func getUsername()->String {
        return currentUsername
    }
}