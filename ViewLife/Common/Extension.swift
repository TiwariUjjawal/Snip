//
//  Extension.swift
//  ViewLife
//
//  Created by UT on 26/08/21.
//

import UIKit

extension UIButton {
    
    func roundedBlueButton() {
        self.layer.cornerRadius = 25
//        self.layer.borderWidth = 1
        self.backgroundColor = UIColorFromRGB(rgbValue: 0x22599D)
    }
    
    func roundedButton(){
        self.layer.cornerRadius = 25
        self.layer.borderWidth = 1
    }
}

func UIColorFromRGB(rgbValue: UInt) -> UIColor {
    return UIColor(
        red: CGFloat((rgbValue & 0xFF0000) >> 16) / 255.0,
        green: CGFloat((rgbValue & 0x00FF00) >> 8) / 255.0,
        blue: CGFloat(rgbValue & 0x0000FF) / 255.0,
        alpha: CGFloat(1.0)
    )
}

extension UITextField {
    
    func bottomLineField(){
        
        let bottomLine = CALayer()
        bottomLine.frame = CGRect(x:0.0, y:75 - 1, width:300, height: 1.0)
        bottomLine.backgroundColor = UIColor.gray.cgColor
        
        self.borderStyle = UITextField.BorderStyle.none
        self.layer.addSublayer(bottomLine)
        
    }
}

//view.backgroundColor = UIColorFromRGB(0x209624)
