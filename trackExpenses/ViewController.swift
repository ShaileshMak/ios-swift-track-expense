//
//  ViewController.swift
//  trackExpenses
//
//  Created by Shailesh Makwana on 9/17/16.
//  Copyright © 2016 Shailesh Makwana. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var userEmailTextField: MyCustomTextField!
    @IBOutlet weak var userPasswordTextField: MyCustomTextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.navigationController?.setNavigationBarHidden(true, animated: false);
        userEmailTextField.type = Constants.EMAIL_TEXTFIELD;
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.navigationController?.setNavigationBarHidden(true, animated: false);
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        self.navigationController?.setNavigationBarHidden(false, animated: false);
    }

    @IBAction func signIn(_ sender: AnyObject) {
        print("Sign in Method called");
    }
}

