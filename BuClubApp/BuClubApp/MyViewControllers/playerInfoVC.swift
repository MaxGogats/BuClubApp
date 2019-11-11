//
//  playerInfoVC.swift
//  BuClubApp
//
//  Created by Max Gogats on 10/24/19.
//  Copyright © 2019 Gogats. All rights reserved.
//

import Foundation
import UIKit
import SwiftSoup

class playerInfoVC: UIViewController {
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var rbiNum: UILabel!
    @IBOutlet weak var avgNum: UILabel!
    @IBOutlet weak var runsNum: UILabel!
    @IBOutlet weak var hitsNum: UILabel!
    @IBOutlet weak var abNum: UILabel!
   
    override func viewDidLoad() {
        super.viewDidLoad()
        nameLabel.text = name[rowClicked-1]
        nameLabel.font = UIFont(name: "Copperplate-Bold", size: CGFloat(40))
        nameLabel.numberOfLines = 2
        nameLabel.textAlignment = .center
        
        loadPlayerData()
    }
    
    
    func loadPlayerData(){
    //make stats structures, sort by alphabetical name
            
        }
}
