//
//  Register+Data.swift
//  Instagram
//
//  Created by Jonathan Dowdell on 10/12/18.
//  Copyright © 2018 Jonathan Dowdell. All rights reserved.
//

import Foundation

enum typeOfData {
    case phone
    case email
    case name
    case password
    case image
}

class UserRegisterData {
    var dataType:typeOfData?
    
    private var registeredDataDictionary:[String:Any] = [String:Any]()
    
    func addUserDataToRegisteredDataArray(dictionaryName:typeOfData, data:Any, dataType:typeOfData = .phone) {
        registeredDataDictionary["\(dictionaryName)"] = data
        self.dataType = dataType
    }
    
    func getPhoneNumber() -> String {
        if let safeNumber = registeredDataDictionary["phone"] {
            return safeNumber as! String
        }
        return "Unknown"
    }
    
    func getEmail() -> String {
        if let safeEmail = registeredDataDictionary["email"] {
            return safeEmail as! String
        }
        return "Unknown"
    }
    
    func getName() -> String {
        if let safeName = registeredDataDictionary["name"] {
            return safeName as! String
        }
        return "Unknown"
    }
    
    func getPassword() -> String {
        if let safePassword = registeredDataDictionary["password"] {
            return safePassword as! String
        }
        return "Unknown"
    }
    
    func getDataCount() -> Int {
        return registeredDataDictionary.count
    }
}
