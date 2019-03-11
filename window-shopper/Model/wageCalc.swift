//
//  wageCalc.swift
//  window-shopper
//
//  Created by Anonymous on 11/03/2019.
//  Copyright © 2019 Anonymous. All rights reserved.
//

import Foundation
class wageCalc {
    class func calculation (forWage wage: Double, andPrice price: Double) -> Int {
        return Int(ceil(price / wage))
    }
}
