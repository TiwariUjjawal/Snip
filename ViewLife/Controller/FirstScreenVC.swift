//
//  FirstScreenVC.swift
//  ViewLife
//
//  Created by UT on 27/08/21.
//

import UIKit

class FirstScreenVC: UIViewController {

    @IBOutlet weak var registerButtonPressed: UIButton!
    @IBOutlet weak var loginButtonPressed: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        registerButtonPressed.roundedButton()
        loginButtonPressed.roundedButton()
        // Do any additional setup after loading the view.
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
