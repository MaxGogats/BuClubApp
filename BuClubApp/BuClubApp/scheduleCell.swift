//
//  scheduleCell.swift
//  BuClubApp
//
//  Created by Max Gogats on 10/28/19.
//  Copyright © 2019 Gogats. All rights reserved.
//

import Foundation
import UIKit

class scheduleCell: UITableViewCell {
    
    @IBOutlet weak var game: UILabel!
    @IBOutlet weak var score: UILabel!
    
    func setSchedule(gameName: String, gameScore: String){
        score.text = gameScore
        game.text = gameName
    }
}
