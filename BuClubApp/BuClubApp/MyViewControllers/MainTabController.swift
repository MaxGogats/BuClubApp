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

var rosterStatArray = [Stats]()
var names = [String]()
var abs = [String]()
var runs = [String]()
var hits = [String]()
var avg = [String]()
var rbi = [String]()
var statsArray = [Stats]()

var pitchingStatArray = [PitchingStats]()
var pNames = [String]()
var wins = [String]()
var losses = [String]()
var innings = [String]()
var era = [String]()
var whipString = [String]()
var strikeouts = [String]()

class MainTabController : UITabBarController {
    override func viewDidLoad() {
        super.viewDidLoad()
        self.selectedIndex = 0
        
        
        /*uploading batting average to server structure*/
        struct avgList: Codable {
            let playerName : String
            let rbiNum : Int
            let g : String
        }
        
        
        
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
                    let pitchingStats: Element? = fullTable.get(2)
                    
                    
                    
                    let pitchingData : Elements? = try pitchingStats?.getElementsByTag("td")
                    let hittingData : Elements? = try hittingStats?.getElementsByTag("td") //retrieve all hitting data for each player
                    
                    //puts stats into right arrays
                    var index = 0
                    for td in hittingData!{
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
                    
                    var pIndex = 0
                    for td in pitchingData! {
                        if(pIndex == 0){
                            pNames.append(try td.text())
                        } else if(pIndex == 1){
                            wins.append(try td.text())
                        } else if(pIndex == 2){
                            losses.append(try td.text())
                        } else if(pIndex == 3){
                            era.append(try td.text())
                        } else if(pIndex == 9){
                            innings.append(try td.text())
                        } else if(pIndex == 15){
                            strikeouts.append(try td.text())
                        } else if(pIndex == 16){
                            whipString.append(try td.text())
                        } else if (pIndex == 27){
                            pIndex = -1
                        }
                        pIndex = pIndex + 1
                    }
    
                    let avgListForUpload = avgList(playerName: "Max Gogats", rbiNum: 5, g: "Baseball App")
                   
                    guard let uploadData = try? JSONEncoder().encode(avgListForUpload) else {
                        return
                    }
                    
                    let url2 = URL(string: "http://cs.binghamton.edu/~pmadden/courses/441score/db.php")!
                    
                    var request = URLRequest(url: url2)
                    request.httpMethod = "POST"
                    request.setValue("application/json", forHTTPHeaderField: "Content-type")
                    
                    let task = URLSession.shared.uploadTask(with: request, from: uploadData){
                        data, response, error in
                        if let error = error{
                            print("error: \(error)")
                            return
                        }
                        guard let response = response as? HTTPURLResponse, (200...299).contains(response.statusCode) else {
                            print("server error")
                            return
                        }
                        
                        if let mimeType = response.mimeType,
                                mimeType == "application/json",
                                let data = data,
                                let dataString = String(data: data, encoding: .utf8) {
                                print ("got data: \(dataString)")
                            }
                        }
                        task.resume()
                    
                    print(task.state.self)
                    
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
