//
//  CalcVC.swift
//  ViewLife
//
//  Created by UT on 24/08/21.
//

import UIKit

class CalcVC: UIViewController {
    
    var q1: Double? = nil
    var q2: Double? = nil
    var query: String = ""
    var op: Bool = false
    var operation: String = ""

    @IBOutlet weak var tField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func buttonPressed(_ sender: Any) {
        
        let senderButton = sender as? UIButton
        let buttonTag = senderButton?.tag ?? 0
        
        if(buttonTag < 10){
            query +=  String(buttonTag)
            tField.text = query
            
//            if(q1 == nil){q1 = Double(buttonTag) }
//            else{
//                q2 = Double(buttonTag)
//            }
            if(q1 == nil){q1 = Double(query) }
            if(q1 != nil){
                q2 = Double(query)
            }
        }
        
        else{
            if(buttonTag < 15){
                op = true
//                print(op)
                query = ""
                
                if(buttonTag == 11) {operation = "+"}
                if(buttonTag == 12) {operation = "-"}
                if(buttonTag == 13) {operation = "/"}
                if(buttonTag == 14) {operation = "x"}
            }
            else if(buttonTag == 21){
                
                if(q1 != nil && q2 != nil){
                    if(op == true){
                        if(operation == "+" ){
                            print(String(q1! + q2!))
                            tField.text = String(q1! + q2!)
                            q1 = q1! + q2!
                        }
                        else if(operation == "-" ){
                            tField.text = String(q1! - q2!)
                            q1 = q1! - q2!
                        }
                        else if(operation == "/" ){
                            if(q2 == 0){
                                q2 = 1
                            }
                            tField.text = String(q1! / q2!)
                            q1 = q1! / q2!
                        }
                        else if(operation == "x" ){
                            tField.text = String(q1! * q2!)
                            q1 = q1! * q2!
                        }
                    }
                    
                }
                
                
            }
        }
        
        
//
//        if(buttonTag == 1){
//            tField.text = "1"
//            q1 = 1
//        }
//        if(buttonTag == 2){
//            tField.text = "2"
//            q2 = 2
//        }
//        if(buttonTag == 11){
//            print("+ pressed")
//            op = true
//            operation = "+"
//        }
//
//        if(buttonTag == 21){
//            print("pressed")
//            if(operation == "+" && op == true){
//                print(String(q1 + q2))
//                tField.text = String(q1 + q2)
//            }
//        }
//
        
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
