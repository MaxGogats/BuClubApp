//
//  schedulePopUpVC.swift
//  BuClubApp
//
//  Created by Max Gogats on 11/1/19.
//  Copyright © 2019 Gogats. All rights reserved.
//

import Foundation
import UIKit

class SchedulePopUpVC : UIViewController {
    @IBOutlet weak var score: UILabel!
    @IBOutlet weak var games: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        score.font = UIFont(name: "HelveticaNeue-Bold", size: 25)
        score.numberOfLines = 2
        score.textAlignment = .center
        score.text = series[scheduleRowClicked]
        
        var seriesGames : [String] = []
        
        seriesGames.append("L 2-4\n\nL 4-6")
        seriesGames.append("W 6-7\n\nL 9-3")
        seriesGames.append("W 2-7\n\nW 0-6\n\nL 8-7")
        seriesGames.append("W 0-4\n\nW 2-4\n\nL 4-3")
        seriesGames.append("L 4-5\n\nL 2-7\n\nW 4-1")
        
        games.numberOfLines = 10
        games.text = seriesGames[scheduleRowClicked-1]
        games.font = UIFont(name: "HelveticaNeue", size: 30)
    }
}


