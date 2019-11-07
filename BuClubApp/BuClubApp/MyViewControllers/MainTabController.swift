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

class MainTabController : UITabBarController {
    
    var names = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.selectedIndex = 1

        
        //This code retrieves HTML on a background thread
        let dispatchQueue = DispatchQueue(label: "QueueIdentification", qos: .background)
        dispatchQueue.async{
            
            //Background task done here
            print("loading html...\n\n\n")
            
            if let url = URL(string: "https://www.clubbaseball.org/league/team/?team=36c1ba31-b586-4be7-a37b-343c6d9363ee&season=46d3ea9a-a080-4273-befb-58b30c2adb01#team-stats") {
                do {
                    let contents = try String(contentsOf: url)
                    statsHTML = contents
                    
                    
                    //let doc: Document = try SwiftSoup.parse(statsHTML)
                    let doc : Document = try SwiftSoup.parse(statsHTML)
                    let table : Elements = try doc.getElementsByClass("collclubsports-component active")
                
                    let hittingStats: Element? = table.get(1) //retrieves the hitting table that I need (3 tables, roster, hitting, pitching)
                    
                    let data : Elements? = try hittingStats?.getElementsByTag("td") //retrieve all td tags
                    let hrefNames : Elements? = try data!.select("a[href]") //href names of players
                    
                    for h in hrefNames! {
                        self.names.append(try h.text()) //retrieve names of all the hitters
                    }
                    
                    let undesiredElements : Elements? = try data!.select("a[href]") // delete href that I don't need anymore
                    try undesiredElements?.remove()
                    
                    try data!.get(0).remove()
                    
                    var count = 0
                    for num1 in data! {
                        print(num1, count)
                        count = count+1
                    }

                    var index = -1
                    for td in data! {
                        
                        index = index+1
                        
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
