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
    
   
    /* Hitting Labels*/
    @IBOutlet var playerName: UINavigationItem!
    @IBOutlet weak var rbiNum: UILabel!
    @IBOutlet weak var avgNum: UILabel!
    @IBOutlet weak var runsNum: UILabel!
    @IBOutlet weak var hitsNum: UILabel!
    @IBOutlet weak var abNum: UILabel!
    @IBOutlet var pitchingLabel: UILabel!
    @IBOutlet var hittingLabel: UILabel!
    
    /*Pitching Labels*/
    
    @IBOutlet var numWins: UILabel!
    @IBOutlet var numLoss: UILabel!
    @IBOutlet var numGames: UILabel!
    @IBOutlet var eraNum: UILabel!
    @IBOutlet var numSO: UILabel!
    @IBOutlet var whip: UILabel!
    
    var pStatsArray = [PitchingStats]()
    var rosterPitchingArray = [PitchingStats]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = fullRoster[rowClicked-1]
        
        hittingLabel.font = UIFont(name: "Copperplate-Bold", size: CGFloat(30))
        pitchingLabel.font = UIFont(name: "Copperplate-Bold", size: CGFloat(30))
        pitchingLabel.text = "PITCHING"
        
        loadPlayerData()
        
        abNum.text = rosterStatArray[rowClicked-1].ab
        hitsNum.text = rosterStatArray[rowClicked-1].numHits
        avgNum.text = rosterStatArray[rowClicked-1].avg
        rbiNum.text = rosterStatArray[rowClicked-1].rbi
        runsNum.text = rosterStatArray[rowClicked-1].numRuns
        
        numWins.text = rosterPitchingArray[rowClicked-1].wins
        numLoss.text = rosterPitchingArray[rowClicked-1].loss
        numGames.text = rosterPitchingArray[rowClicked-1].numInnings
        eraNum.text = rosterPitchingArray[rowClicked-1].era
        numSO.text = rosterPitchingArray[rowClicked-1].numSO
        whip.text = rosterPitchingArray[rowClicked-1].whip
    }
    
    func loadPlayerData(){
        //make stats structures, sort by alphabetical name
        var count = 0
        for _ in fullRoster {
            let temp = Stats(name: fullRoster[count], abs: "0", hits: "0", average: "0", runs: "0", ribby: "0")
            let pTemp = PitchingStats(player: fullRoster[count], win: "0", loss1: "0", era1: "0", numSO1: "0", numInn: "0", whip1: "0")
            rosterStatArray.append(temp)
            rosterPitchingArray.append(pTemp)
            count = count+1
        }
            
        var n = 0
        for _ in names {
            let s1 = Stats(name: names[n], abs: abs[n], hits: hits[n], average: avg[n], runs: runs[n], ribby: rbi[n])
            statsArray.append(s1)
            n = n+1
        }
        
        var j = 0
        for _ in pNames {
            let p1 = PitchingStats(player: pNames[j], win: wins[j], loss1: losses[j], era1: era[j], numSO1: strikeouts[j], numInn: innings[j], whip1: whipString[j])
            
            pStatsArray.append(p1)
            j = j+1
        }
        
        for defaultPitcher in rosterPitchingArray {
            for realStats in pStatsArray {
                if(defaultPitcher.name.elementsEqual(realStats.name)){
                    defaultPitcher.wins = realStats.wins
                    defaultPitcher.loss = realStats.loss
                    defaultPitcher.era = realStats.era
                    defaultPitcher.numInnings = realStats.numInnings
                    defaultPitcher.numSO = realStats.numSO
                    defaultPitcher.whip = realStats.whip
                }
            }
        }
        
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
