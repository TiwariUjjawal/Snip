//
//  SignUpVC.swift
//  ViewLife
//
//  Created by UT on 24/08/21.
//

import UIKit

class SignUpVC: UIViewController {

    @IBOutlet weak var facebookSignUPButton: UIButton!
    @IBOutlet weak var firstNameTextField: UITextField!
    @IBOutlet weak var lastNameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        facebookSignUPButton.roundedBlueButton()
        firstNameTextField.bottomLineField()
        lastNameTextField.bottomLineField()
        emailTextField.bottomLineField()
        passwordTextField.bottomLineField()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func backButtonPressed(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
    
    @IBAction func signUpButtonPressed(_ sender: Any) {
        
//        let checkFirstName: Bool  = checkName(str: firstNameTextField.text ?? "")
//        let checkLastName: Bool  = checkName(str: lastNameTextField.text ?? "")
//        let checkEmail: Bool = check(str: emailTextField.text ?? "")
//        let checkPassword: Bool = check(str: passwordTextField.text ?? "")
//        print(checkFirstName)
//        print(checkLastName)
//        print(checkEmail)
//        print(checkPassword)
//
//
//        if(checkFirstName && checkLastName && checkEmail && checkPassword){
//            print("In")
//            let objTabBar = TabBarVC()
////            self.navigationController?.show(objTabBar, sender: self)
//            self.navigationController?.pushViewController(objTabBar, animated: true)
//        }
        
        
    }
    
    func check(str: String) -> Bool {
          var containsCapital = false
          var containsSmall = false
          var containsNumber = false
          var containsSpecialCharacter = false
          for character in str {
            if character >= "A" && character <= "Z" {
              containsCapital = true
            }
            else if character >= "a" && character <= "z"{
              containsSmall = true
            }
            else if character >= "0" && character <= "9" {
              containsNumber = true
            } else {
              containsSpecialCharacter = true
            }
          }
        return containsCapital && containsSmall && containsNumber && containsSpecialCharacter && str.count>=8 && str.count<=16
        }
    
    func checkName(str: String) -> Bool {
          var containsCapital = false
          var containsSmall = false
//          var containsNumber = false
//          var containsSpecialCharacter = false
          for character in str {
            if character >= "A" && character <= "Z" {
              containsCapital = true
            }
            else if character >= "a" && character <= "z"{
              containsSmall = true
            }
//            else if character >= "0" && character <= "9" {
//              containsNumber = true
//            } else {
//              containsSpecialCharacter = true
//          }
          }
//        return containsCapital && containsSmall && containsNumber && containsSpecialCharacter && str.count>=8 && str.count<=16
        return containsCapital && containsSmall && str.count>=8 && str.count<=16
        }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

extension SignUpVC: UITextFieldDelegate {
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
//        print(string)
//        print(lastNameTextField.text ?? "")
        return true
    }
}
