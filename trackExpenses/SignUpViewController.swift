//
//  SignUpViewController.swift
//  trackExpenses
//
//  Created by Shailesh Makwana on 9/17/16.
//  Copyright © 2016 Shailesh Makwana. All rights reserved.
//

import UIKit

class SignUpViewController: UIViewController {

    @IBOutlet weak var userEmailTextField: MyCustomTextField!
    @IBOutlet weak var userPasswordTextField: MyCustomTextField!
    @IBOutlet weak var userConfirmPasswordTextField: MyCustomTextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.userEmailTextField.type = Constants.EMAIL_TEXTFIELD;
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func signUp(_ sender: AnyObject) {
        let userName = self.userEmailTextField.text;
        let userPassword = self.userPasswordTextField.text;
        let confirmUserPassword = self.userConfirmPasswordTextField.text;
        
        if (userName == "" || userPassword == "" || confirmUserPassword == "") {
            self.showAlertMessage(message:"All fields are required");
        }
    }
        func showAlertMessage(message:String) {
        print(message);
    }
    
}
