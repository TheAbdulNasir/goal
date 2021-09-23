//
//  SecondViewController.swift
//  Goal
//
//  Created by Abdul Nasir Khan on 9/22/21.
//

import UIKit
import CoreData

class SecondViewController: UIViewController,UITableViewDelegate,UITableViewDataSource{
   
    @IBOutlet weak var tableview: UITableView!
    var addGoal:[String] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        tableview.reloadData()
    }
   @IBAction func addYourGoalButton(_ sender: Any) {
      
       let alert = UIAlertController(title: "New Goal", message: "Add New Goal", preferredStyle: .alert)
       let saveAction = UIAlertAction(title: "Save", style: .default){ action in
           guard let textField = alert.textFields?.first else {return}
           guard let goalToSave = textField.text else {return}
           self.addGoal.append(goalToSave)
           self.tableview.reloadData()

       }
      let cancelAction = UIAlertAction(title: "cancel", style: .cancel)

       alert.addTextField()
       alert.addAction(saveAction)
       alert.addAction(cancelAction)
       present(alert,animated: true)
    
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        addGoal.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "FirstCell") as! SecondTableViewCell
        
        cell.textLabel?.text = addGoal[indexPath.row]
        return cell
      }
}
