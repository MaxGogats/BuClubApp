//
//  playerInfoVC.swift
//  BuClubApp
//
//  Created by Max Gogats on 10/24/19.
//  Copyright © 2019 Gogats. All rights reserved.
//

import Foundation
import UIKit


class playerInfoVC: UIViewController {
    
    @IBOutlet weak var nameLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        nameLabel.text = "Max Gogats"
        nameLabel.textAlignment = .center
        nameLabel.font = UIFont(name: "Copperplate-Bold", size: 40)
    }
}
