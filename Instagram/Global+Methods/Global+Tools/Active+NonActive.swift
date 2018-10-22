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
            btn.nonActiveBtn(btn: btn, errorRemoval: err, stack: stack)
        } else if !pwd {
            btn.activeBtn(btn: btn)
        } else if pwd && isValidPassword(pwd: textFromTextField) {
            btn.activeBtn(btn: btn)
        }
    }
}

extension UIButton {
    
    /********************************************/
    /* Active Button */
    /********************************************/
    func activeBtn(btn:UIButton) {
        UIView.animate(withDuration: 0.1) {
            btn.backgroundColor = UIColor.btn.active
        }
        btn.isUserInteractionEnabled = true
    }
    
    /********************************************/
    /* Non-Active Button */
    /********************************************/
    func nonActiveBtn(btn:UIButton, errorRemoval:UILabel?, stack:UIStackView?) {
        UIView.animate(withDuration: 0.1) {
            btn.backgroundColor = UIColor.btn.nonActive
        }
        btn.isUserInteractionEnabled = false
        if let safeError = errorRemoval, let safeStack = stack {
            UIView.animate(withDuration: 0.1, animations: {
                safeError.alpha = 0
            }) { (_) in
                safeStack.removeArrangedSubview(safeError)
            }
        }
    }
}
