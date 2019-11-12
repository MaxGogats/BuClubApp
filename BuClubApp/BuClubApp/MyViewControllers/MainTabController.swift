//
//  MainTabController.swift
//  BuClubApp
//
//  Created by Max Gogats on 10/16/19.
//  Copyright © 2019 Gogats. All rights reserved.
//

import Foundation
import SwiftSoup
import UIKit

var statsHTML = ""
var names = [String]()
var abs = [String]()
var runs = [String]()
var hits = [String]()
var avg = [String]()
var rbi = [String]()
var statsArray = [Stats]()
var rosterStatArray = [Stats]()


class MainTabController : UITabBarController {
    override func viewDidLoad() {
        super.viewDidLoad()
        self.selectedIndex = 1
        
        //This code retrieves HTML on a background thread
        let dispatchQueue = DispatchQueue(label: "QueueIdentification", qos: .background)
        dispatchQueue.async{
            
            //Background task done here
            print("\nloading html...\n")
            
            if let url = URL(string: "https://www.clubbaseball.org/league/team/?team=36c1ba31-b586-4be7-a37b-343c6d9363ee&season=46d3ea9a-a080-4273-befb-58b30c2adb01#team-stats") {
                do {
                    let contents = try String(contentsOf: url)
                    statsHTML = contents
                    
                    let doc : Document = try SwiftSoup.parse(statsHTML)
                    let fullTable : Elements = try doc.getElementsByClass("collclubsports-component active")
                    
                    let hittingStats: Element? = fullTable.get(1) //retrieves the hitting table that I need (3 tables, roster, hitting, pitching)
                    
                    let data : Elements? = try hittingStats?.getElementsByTag("td") //retrieve all hitting data for each player
                    
                    //puts stats into right arrays
                    var index = 0
                    for td in data!{
                        
                        if(index == 0){
                            try names.append(td.text())
                        } else if (index == 1){
                            try abs.append(td.text())
                        } else if(index == 2){
                            try runs.append(td.text())
                        } else if(index == 3){
                            try hits.append(td.text())
                        } else if(index == 7){
                            try rbi.append(td.text())
                        } else if(index == 12){
                            try avg.append(td.text())
                        } else if(index == 22){
                            index = -1
                        }
                        index = index + 1
                    }
                    print("Done")
                } catch {
                    // contents could not be loaded
                    print("Contents not loaded!")
                }
            } else {
                // the URL was bad!
                print("Bad URL!")
            }
            
            var count = 0
            for _ in fullRoster {
                let temp = Stats(name: fullRoster[count], abs: "0", hits: "0", average: "0", runs: "0", ribby: "0")
                rosterStatArray.append(temp)
                count = count+1
            }
            
            var n = 0
            for _ in fullRoster {
                let s1 = Stats(name: names[n], abs: abs[n], hits: hits[n], average: avg[n], runs: runs[n], ribby: rbi[n])
                statsArray.append(s1)
                n = n+1
            }
            
            for player in rosterStatArray{
                for playerStatsName in statsArray {
                    if(player.playerName.elementsEqual(playerStatsName.playerName)){
                        print(playerStatsName.playerName)
                    } else {
                        print("not equal")
                    }
                }
            }
        }
    }
}
