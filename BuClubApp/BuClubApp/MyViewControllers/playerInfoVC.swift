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
    @IBOutlet weak var pitching: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        hitting.font = UIFont(name: "Copperplate-Bold", size: 30)
        hitting.text = "HITTING"
        
        pitching.font = UIFont(name: "Copperplate-Bold", size: 30)
             pitching.text = "PITCHING"
        
        changeNames()
        loadPlayerData()
    }
    
    
    func changeNames(){
        for pName in name{
            
        }
    }
    
    func loadPlayerData(){
        var playerStats: [stats] = []
        
        var bevStats = stats(name: "Paul Bev", abs: "10", numHits1: "5", avg1: ".500", obp1: ".500", rbi1: "10")
    
        nameLabel.setTitle(name[rowClicked-1], for: .normal)
        nameLabel.titleLabel?.font = UIFont(name: "Copperplate-Bold", size: 40)
        nameLabel.titleLabel?.numberOfLines = 2
        
        
        //playerName.text = arrayOfPlayerStats[rowClicked].playerName
       // playerAvg.text = arrayOfPlayerStats[rowClicked].avg
    }
    
}
