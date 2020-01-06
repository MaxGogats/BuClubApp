//
//  StandingsVC.swift
//  BuClubApp
//
//  Created by Max Gogats on 12/9/19.
//  Copyright © 2019 Gogats. All rights reserved.
//

import Foundation
import UIKit
import SwiftSoup

class StandingsVC: UIViewController{
  
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        let dispatchQueue = DispatchQueue(label: "QueueIdentification", qos: .background)
        dispatchQueue.async{
            if let url = URL(string: "https://www.clubbaseball.org/league/team/?team=36c1ba31-b586-4be7-a37b-343c6d9363ee&season=46d3ea9a-a080-4273-befb-58b30c2adb01#team-main"){
                do{
                    let contents = try String(contentsOf: url)
                    let doc : Document = try SwiftSoup.parse(contents)
                    
                    
                    
                    
                } catch{
                    print("Contents not loaded!")
                }
            } else {
                print("Bad url!")
            }
        }
    }
}
