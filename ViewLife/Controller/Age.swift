//
//  SignUpVC.swift
//  ViewLife
//
//  Created by UT on 24/08/21.
//

import UIKit

class Age: UIViewController {

    @IBOutlet weak var inputAgeButton: UIButton!
    @IBOutlet weak var inputGenderButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        inputAgeButton.roundedBlueButton()
        inputGenderButton.roundedBlueButton()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func backButtonPressed(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
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
