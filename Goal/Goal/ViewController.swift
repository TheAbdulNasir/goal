//
//  ViewController.swift
//  Goal
//
//  Created by Abdul Nasir Khan on 9/22/21.
//

import UIKit
import CoreData

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func pressWorkInProgressButton(_ sender: UIButton) {
        let vc = (storyboard?.instantiateViewController(withIdentifier: "SecondViewController") as! SecondViewController)
        navigationController?.pushViewController(vc, animated: true)
        
    
    }
    
    @IBAction func pressTaskCompletedButton(_ sender: UIButton) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "ThirdViewController")as! ThirdViewController
        navigationController?.pushViewController(vc, animated: true)
   
    }
}

