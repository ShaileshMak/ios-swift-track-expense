import Foundation
import UIKit

class MyCustomTextField: UITextField, UITextFieldDelegate {
    var type = "DEFAULT";
    var required = true;
    
    let defaultColor = UIColor(red: 55/255, green: 78/255, blue: 95/255, alpha: 1.0).cgColor;
    let highlightedColor = UIColor(red: 255/255, green: 0/255, blue: 0/255, alpha: 1.0).cgColor;
    
    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)!
        super.delegate = self;
        self.createBorder(color: defaultColor)
    }
    
    override func createBorder(color: CGColor) {
        let border = CALayer()
        let width = CGFloat(2.0)
        border.borderColor = color;
        border.frame = CGRect(x: 0, y: self.frame.size.height-width, width: self.frame.size.width, height: self.frame.size.height)
        border.borderWidth = width
        self.layer.addSublayer(border)
        self.layer.masksToBounds = true
    }
    
    
    func textFieldShouldEndEditing(_ textField: UITextField) -> Bool {
        if(self.required) {
            if(self.text == "") {
                self.createBorder(color: self.highlightedColor);
                return true;
            } else {
                self.createBorder(color: self.defaultColor);
            }
        }
        if(self.type == Constants.EMAIL_TEXTFIELD) {
            if(!isValidEmail(testStr: self.text!)) {
                self.createBorder(color: self.highlightedColor);
            } else {
                self.createBorder(color: self.defaultColor);
            }
        }
        
        return true;
    }
    
    func isValidEmail(testStr:String) -> Bool {
        // print("validate calendar: \(testStr)")
        let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,}";
        
        let emailTest = NSPredicate(format:"SELF MATCHES %@", emailRegEx);
        let result = emailTest.evaluate(with: testStr);
        return result;
    }
    


}
