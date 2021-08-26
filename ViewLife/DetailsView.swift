//
//  SignUpVC.swift
//  ViewLife
//
//  Created by UT on 24/08/21.
//

import UIKit

class DetailsView: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    var titleArray:[String] = []
    var popularityArray:[String] = []
    var releaseArray:[String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        titleArray = ["Ad Astra", "Zathura: A Space Adventure", "Hamilton", "Eurovision"]
        popularityArray = ["176,614", "161,547", "143,314", "161,421"]
        releaseArray = ["2020", "2019", "2021", "2018"]
        
        // Do any additional setup after loading the view.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return titleArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CustomCell") as? CustomCell
        cell?.labelCell.text = temp[indexPath.row]
        return cell!
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
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
