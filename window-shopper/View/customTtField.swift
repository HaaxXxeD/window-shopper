//
//  customTtField.swift
//  window-shopper
//
//  Created by Anonymous on 06/03/2019.
//  Copyright © 2019 Anonymous. All rights reserved.
//

import UIKit
@IBDesignable
class customTtField: UITextField {

    override func prepareForInterfaceBuilder() {
        customFunction()
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        customFunction()
        }
    
    func customFunction(){
        backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.25)
        layer.cornerRadius = 5.0
        textAlignment = .center
        
        if let p = placeholder {
            let place = NSAttributedString(string: p , attributes:[.foregroundColor : #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)])
            attributedPlaceholder = place
            textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        }
    }


}
