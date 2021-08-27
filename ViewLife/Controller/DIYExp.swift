//
//  SignUpVC.swift
//  ViewLife
//
//  Created by UT on 24/08/21.
//

import UIKit

class DIYExp: UIViewController {
    
    @IBOutlet weak var beginnerButton: UIButton!
    @IBOutlet weak var intermediateButton: UIButton!
    @IBOutlet weak var expertButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        beginnerButton.roundedBlueButton()
        intermediateButton.roundedBlueButton()
        expertButton.roundedBlueButton()
        
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
