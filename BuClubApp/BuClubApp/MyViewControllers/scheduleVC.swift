//
//  scheduleVC.swift
//  BuClubApp
//
//  Created by Max Gogats on 10/28/19.
//  Copyright © 2019 Gogats. All rights reserved.
//

import Foundation
import UIKit

class scheduleVC: UIViewController, UITableViewDataSource, UITableViewDelegate{
    
    @IBOutlet weak var tableView: UITableView!
    
    var games: [String] = []
    var scores: [String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource = self
        tableView.delegate = self
        
       
        
        games.append("Cortland G1")
        games.append("Cortland G2")
        
        games.append("Brockport G1")
        games.append("Brockport G2")
        games.append("Brockport G3")
        
        games.append("Slippery Rock G1")
        games.append("Slippery Rock G2")
        
        
        
        scores.append("L 2-4")
        scores.append("L 4-6")
        scores.append("W 7-2")
        scores.append("W 6-0")
        scores.append("L 8-7")
        scores.append("W 4-2")
        scores.append("W 4-1")
        scores.append("L 3-4")
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return games.count
       }
       
       func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "scheduleCell") as! scheduleCell
        let game = games[indexPath.row]
        let score = scores[indexPath.row]
        
        cell.setSchedule(gameName: game, gameScore: score)
        return cell
        
       }
}
