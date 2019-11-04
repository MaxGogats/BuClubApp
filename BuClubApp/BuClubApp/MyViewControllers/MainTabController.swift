//
//  MainTabController.swift
//  BuClubApp
//
//  Created by Max Gogats on 10/16/19.
//  Copyright © 2019 Gogats. All rights reserved.
//

import Foundation
import UIKit

var statsHTML = ""

class MainTabController : UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        let dispatchQueue = DispatchQueue(label: "QueueIdentification", qos: .background)
             dispatchQueue.async{
             //Time consuming task here
                 
                print("loading html.....")
                 if let url = URL(string: "https://www.clubbaseball.org/league/team/?team=36c1ba31-b586-4be7-a37b-343c6d9363ee&season=46d3ea9a-a080-4273-befb-58b30c2adb01#team-player") {
                     do {
                         let contents = try String(contentsOf: url)
                         statsHTML = contents
                         print(contents)
                     } catch {
                         // contents could not be loaded
                         print("Contents not loaded")
                     }
                 } else {
                     // the URL was bad!
                     print("Bad URL!")
                 }
             }
        
        
    }
}
