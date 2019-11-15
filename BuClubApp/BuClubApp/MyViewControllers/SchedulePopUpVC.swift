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
    @IBOutlet var dateLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        score.font = UIFont(name: "HelveticaNeue-Bold", size: 25)
        score.numberOfLines = 2
        score.textAlignment = .center
        score.text = series19[scheduleRowClicked]
        
        var seriesGames : [String] = []
        
        seriesGames.append("L 2-4\n\nL 4-6")
        seriesGames.append("W 6-7\n\nL 9-3")
        seriesGames.append("W 2-7\n\nW 0-6\n\nL 8-7")
        seriesGames.append("W 0-4\n\nW 2-4\n\nL 4-3")
        seriesGames.append("L 4-5\n\nL 2-7\n\nW 4-1")
        seriesGames.append("N/A")
        seriesGames.append("N/A")
        
        
        

        dates19.append("-/--/--")
        dates19.append("9/14/19")
        dates19.append("9/21/19")
        dates19.append("10/05/19 - 10/06/19")
        dates19.append("10/19/19 - 10/20/19")
        dates19.append("11/02/19 - 11/03/19")
        dates19.append("4/04/20 - 4/05/20")
        dates19.append("4/18/20 - 4/19/20")
        
        
        games.numberOfLines = 10
        games.text = seriesGames[scheduleRowClicked-1]
        games.font = UIFont(name: "HelveticaNeue", size: 35)
        
        dateLabel.textAlignment = .center
        dateLabel.text = dates19[scheduleRowClicked]
        dateLabel.font = UIFont(name: "HelveticaNeue-Bold", size: 25)
    }
}


