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
}

class UserRegisterData {
    var dataType:typeOfData?
    
    private var registeredDataDictionary:[String:String] = [String:String]()
    
    func addUserDataToRegisteredDataArray(dictionaryName:typeOfData, data:String, dataType:typeOfData = .phone) {
        registeredDataDictionary["\(dictionaryName)"] = data
        self.dataType = dataType
    }
    
    func getPhoneNumber() -> String {
        if let safeNumber = registeredDataDictionary["Number"] {
            return safeNumber
        }
        return "Unknown"
    }
    
    func getDataCount() -> Int {
        return registeredDataDictionary.count
    }
}
