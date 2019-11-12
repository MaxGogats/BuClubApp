//
//  schedulePopUpVC.swift
//  BuClubApp
//
//  Created by Max Gogats on 11/1/19.
//  Copyright © 2019 Gogats. All rights reserved.
//

import Foundation
import UIKit

class schedulePopUpVC : UIViewController {
    @IBOutlet weak var score: UILabel!
    override func viewDidLoad() {
       
        super.viewDidLoad()
        
        score.font = UIFont(name: "Copperplate-bold", size: 30)
        score.text = "BU v. Brockport"
    }
    
}


