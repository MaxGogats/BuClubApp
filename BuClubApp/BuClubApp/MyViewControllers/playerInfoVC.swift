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
    @IBOutlet weak var rbiNum: UILabel!
    @IBOutlet weak var obpNum: UILabel!
    @IBOutlet weak var avgNum: UILabel!
    @IBOutlet weak var hitsNum: UILabel!
    @IBOutlet weak var atBatsNum: UILabel!
    @IBOutlet weak var hitting: UILabel!
    @IBOutlet weak var nameLabel: UIButton!
    @IBOutlet weak var pitching: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        hitting.font = UIFont(name: "Copperplate-Bold", size: 30)
        hitting.text = "HITTING"
        
        pitching.font = UIFont(name: "Copperplate-Bold", size: 30)
             pitching.text = "PITCHING"
    
        loadPlayerData()
    }
    
    
    func loadPlayerData(){
        var playerStats: [stats] = []
        
        nameLabel.setTitle(name[rowClicked-1], for: .normal) //sets name for title
        nameLabel.titleLabel?.font = UIFont(name: "Copperplate-Bold", size: 40)
        nameLabel.titleLabel?.numberOfLines = 2
        
        var index = 0
       // for name in names {
            //let tempStat = stats(name: name, abs: abs[index], runs: runs[index], hits: hits[index], avg1: avg[index], rbi1: rbi[index])
            
            //playerStats.append(tempStat)
           // index = index + 1
       // }
        
    
        
        //playerName.text = arrayOfPlayerStats[rowClicked].playerName
       // playerAvg.text = arrayOfPlayerStats[rowClicked].avg
    }
}
