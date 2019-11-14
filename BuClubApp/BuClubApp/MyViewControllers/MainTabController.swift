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
        }
    }
}
