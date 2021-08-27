//
//  ViewController.swift
//  ViewLife
//
//  Created by UT on 24/08/21.
//

import UIKit

class LoginVC: UIViewController {

    @IBOutlet weak var facebookButton: UIButton!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        facebookButton.roundedBlueButton()
        emailTextField.bottomLineField()
        passwordTextField.bottomLineField()
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        print("viewWillAppear")
    }

    @IBAction func backButtonPressed(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
}

