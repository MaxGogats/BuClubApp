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
        nameLabel.text = fullRoster[rowClicked-1]
        nameLabel.font = UIFont(name: "Copperplate-Bold", size: CGFloat(40))
        nameLabel.numberOfLines = 2 
        nameLabel.textAlignment = .center
        
        loadPlayerData()
        
        abNum.text = rosterStatArray[rowClicked-1].ab
        hitsNum.text = rosterStatArray[rowClicked-1].numHits
        avgNum.text = rosterStatArray[rowClicked-1].avg
        rbiNum.text = rosterStatArray[rowClicked-1].rbi
        runsNum.text = rosterStatArray[rowClicked-1].numRuns
        
        
        
        
    }
    
    
    func loadPlayerData(){
        //make stats structures, sort by alphabetical name
        var count = 0
        for butter in fullRoster {
            let temp = Stats(name: fullRoster[count], abs: "0", hits: "0", average: "0", runs: "0", ribby: "0")
            rosterStatArray.append(temp)
            count = count+1
        }
        
        var n = 0
        for nimbo in names {
            let s1 = Stats(name: names[n], abs: abs[n], hits: hits[n], average: avg[n], runs: runs[n], ribby: rbi[n])
            statsArray.append(s1)
            n = n+1
        }
        
        var i = 0
        var j = 0
        for player in rosterStatArray{
            for playerStatsName in statsArray {
                if(player.playerName.elementsEqual(playerStatsName.playerName)){
                    player.ab = playerStatsName.ab
                    player.avg = playerStatsName.avg
                    player.numHits = playerStatsName.numHits
                    player.numRuns = playerStatsName.numRuns
                    player.rbi = playerStatsName.rbi
                }
            }
        }
    }
}
