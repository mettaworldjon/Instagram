//
//  ValidPassword.swift
//  Instagram
//
//  Created by Jonathan Dowdell on 10/15/18.
//  Copyright © 2018 Jonathan Dowdell. All rights reserved.
//

import Foundation

public func isValidPassword(pwd:String) -> Bool {
    let passwordRegex = "^(?=.*[a-z])(?=.*[A-Z])(?=.*\\d)[a-zA-Z\\d]{8,}$"
    return NSPredicate(format: "SELF MATCHES %@", passwordRegex).evaluate(with: pwd)
}
