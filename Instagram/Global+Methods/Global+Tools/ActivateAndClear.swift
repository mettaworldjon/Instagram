//
//  ActivateAndClear.swift
//  Instagram
//
//  Created by Jonathan Dowdell on 10/15/18.
//  Copyright © 2018 Jonathan Dowdell. All rights reserved.
//

import UIKit

extension UIViewController {
    /********************************************/
    /* Check If Typing Or Cleared TextField */
    /********************************************/
    func checkIfTypeingOrCleared(textFromTextField:String, btn:UIButton, stack:UIStackView, err:UILabel?, pwd:Bool = false , pwdString:String = "") {
        if textFromTextField == "" {
            UIView.animate(withDuration: 0.1) {
                btn.backgroundColor = UIColor(red:0.60, green:0.79, blue:0.97, alpha:1.00)
            }
            btn.isUserInteractionEnabled = false
            if let safeError = err {
                UIView.animate(withDuration: 0.1, animations: {
                    safeError.alpha = 0
                }) { (_) in
                    stack.removeArrangedSubview(safeError)
                }
            }
        } else if !pwd {
            UIView.animate(withDuration: 0.1) {
                btn.backgroundColor = UIColor(red:0.22, green:0.59, blue:0.94, alpha:1.00)
            }
            btn.isUserInteractionEnabled = true
        } else if pwd && isValidPassword(pwd: textFromTextField) {
            UIView.animate(withDuration: 0.1) {
                btn.backgroundColor = UIColor(red:0.22, green:0.59, blue:0.94, alpha:1.00)
            }
            btn.isUserInteractionEnabled = true
        }
    }
    
}
