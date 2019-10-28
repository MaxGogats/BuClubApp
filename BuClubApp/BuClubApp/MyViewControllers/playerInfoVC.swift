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
    
    @IBOutlet weak var hitting: UILabel!
    @IBOutlet weak var nameLabel: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        
        hitting.font = UIFont(name: "Copperplate-Bold", size: 40)
        hitting.text = "HITTING"
        
        loadPlayerData()
    }
    
    
    func loadPlayerData(){
        var playerStats: [stats] = []
        
        var bevStats = stats(name: "Paul Bev", abs: "10", numHits1: "5", avg1: ".500", obp1: ".500", rbi1: "10")
    
        let name = bevStats.playerName
        nameLabel.setTitle(name, for: .normal)
        nameLabel.titleLabel?.font = UIFont(name: "Copperplate-Bold", size: 50)
       /* for player in players {
            //create stats for each players
        
        }*/
       // playerName.text = arrayOfPlayerStats[rowClicked].playerName
       // playerAvg.text = arrayOfPlayerStats[rowClicked].avg
    }
    
}
