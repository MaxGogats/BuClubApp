//
//  ViewController.swift
//  BuClubApp
//
//  Created by Max Gogats on 10/16/19.
//  Copyright © 2019 Gogats. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func EnterApp(_ sender: Any) {
        let mainTabController = storyboard?.instantiateViewController(identifier: "MainTabController") as! MainTabController
        
        mainTabController.selectedViewController = mainTabController.viewControllers?[3]
        present(mainTabController, animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }
}

