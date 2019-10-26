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
    @IBOutlet weak var hitting: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
      
        nameLabel.textAlignment = .center
        nameLabel.font = UIFont(name: "Copperplate-Bold", size: 45)
        nameLabel.textColor = .white
        
        
        hitting.font = UIFont(name: "Copperplate-Bold", size: 40)
        hitting.text = "HITTING"
        loadPlayerData()
    }
    
    
    func loadPlayerData(){
        var playerStats: [stats] = []
        
        var bevStats = stats(name: "Paul Bev", abs: "10", numHits1: "5", avg1: ".500", obp1: ".500", rbi1: "10")
        
        nameLabel.text = bevStats.playerName
        
        
        
       /* for player in players {
            //create stats for each players
        
        }*/
       // playerName.text = arrayOfPlayerStats[rowClicked].playerName
       // playerAvg.text = arrayOfPlayerStats[rowClicked].avg
        
    }
    
}
