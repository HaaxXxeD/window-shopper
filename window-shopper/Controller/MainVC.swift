//
//  ViewController.swift
//  window-shopper
//
//  Created by Anonymous on 06/03/2019.
//  Copyright © 2019 Anonymous. All rights reserved.
//

import UIKit

class MainVC: UIViewController {

    @IBOutlet weak var wageTxt: customTtField!
    @IBOutlet weak var priceTxt: customTtField!
    @IBOutlet weak var hourTxtLbl: UILabel!
    @IBOutlet weak var hoursLbl: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let calcBtn = UIButton(frame: CGRect(x: 0, y: 0, width: view.frame.size.width, height: 60))
        calcBtn.backgroundColor = #colorLiteral(red: 1, green: 0.5512954194, blue: 0.03565959886, alpha: 1)
        calcBtn.setTitle("Calculate", for: .normal)
        calcBtn.setTitleColor(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), for: .normal)
        calcBtn.addTarget(self, action: #selector(MainVC.calculate), for: .touchUpInside)
        
        wageTxt.inputAccessoryView = calcBtn
        priceTxt.inputAccessoryView = calcBtn
        hoursLbl.isHidden = true
        hourTxtLbl.isHidden = true
        
        
    }

    @objc func calculate(){
        if let wageTxt = wageTxt.text, let priceTxt = priceTxt.text {
            if let wage = Double(wageTxt), let price = Double(priceTxt){
                view.endEditing(true)
                hoursLbl.isHidden = false
                hourTxtLbl.isHidden = false
                hoursLbl.text = "\(wageCalc.calculation(forWage: wage, andPrice: price))"
            }
        }
        
    }
    
    @IBAction func clearCalculations(_ sender: Any) {
        wageTxt.text = ""
        priceTxt.text = ""
        hoursLbl.isHidden = true
        hourTxtLbl.isHidden = true
    }
    

}

