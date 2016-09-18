//
//  myUITextField.swift
//  trackExpenses
//
//  Created by Shailesh Makwana on 9/17/16.
//  Copyright © 2016 Shailesh Makwana. All rights reserved.
//

import UIKit

extension UITextField {
    
    func createBorder(color:CGColor){
        let border = CALayer()
        let width = CGFloat(2.0)
        border.borderColor = color
        border.frame = CGRect(x: 0, y: self.frame.size.height-width, width: self.frame.size.width, height: self.frame.size.height)
        border.borderWidth = width
        self.layer.addSublayer(border)
        self.layer.masksToBounds = true
        //print("border created")
    }
    
}
