//
//  schedulePopUpVC.swift
//  BuClubApp
//
//  Created by Max Gogats on 11/1/19.
//  Copyright © 2019 Gogats. All rights reserved.
//

import Foundation
import UIKit

var dates19 : [String] = []
var dates18 : [String] = []

class SchedulePopUpVC : UIViewController {
    
    @IBOutlet weak var games: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        var seriesGames19 : [String] = []
        
        seriesGames19.append("\t\t\tL 2-4\n\n\t\t\tL 4-6")
        seriesGames19.append("\t\t\tW 6-7\n\n\t\t\tL 9-3")
        seriesGames19.append("\t\t\tW 2-7\n\n\t\t\tW 0-6\n\n\t\t\tL 8-7")
        seriesGames19.append("\t\t\tW 0-4\n\n\t\t\tW 2-4\n\n\t\t\tL 4-3")
        seriesGames19.append("\t\t\tL 4-5\n\n\t\t\tL 2-7\n\n\t\t\tW 4-1")
        seriesGames19.append("\t\t\tN/A")
        seriesGames19.append("\t\t\tN/A")
        
        dates19.append("-/--/--")
        dates19.append("9/14/19")
        dates19.append("9/21/19")
        dates19.append("10/05/19 - 10/06/19")
        dates19.append("10/19/19 - 10/20/19")
        dates19.append("11/02/19 - 11/03/19")
        dates19.append("4/04/20 - 4/05/20")
        dates19.append("4/18/20 - 4/19/20")
        
        var seriesGames18 : [String] = []
        seriesGames18.append("\t\t\tW 6-0\n\n\t\t\tW 8-2\n\n\t\t\tW 10-0")
        seriesGames18.append("\t\t\tW 6-0\n\n\t\t\tW 8-2\n\n\t\t\tW 10-0")
        seriesGames18.append("\t\t\tW 6-0\n\n\t\t\tW 8-2\n\n\t\t\tW 10-0")
        seriesGames18.append("\t\t\tW 6-0\n\n\t\t\tW 8-2\n\n\t\t\tW 10-0")
        seriesGames18.append("\t\t\tW 8-1\n\n\t\t\tW 4-1\n\n\t\t\tW 6-2")
        seriesGames18.append("\t\t\tL 1-2\n\n\t\t\tW 8-2\n\n\t\t\tL 2-6")
        
        dates18.append("Spring 2019")
        dates18.append("Spring 2019")
        dates18.append("Spring 2019")
        dates18.append("Spring 2019")
        dates18.append("Spring 2019")
        dates18.append("Spring 2019")
        
        games.numberOfLines = 10
        games.font = UIFont(name: "HelveticaNeue", size: 35)
        
        if(year18 == false){
            self.title = series19[scheduleRowClicked] + "  " + dates19[scheduleRowClicked]
            games.text = seriesGames19[scheduleRowClicked-1]
            //dateLabel.text = dates19[scheduleRowClicked]
            
        } else if (year18 == true){
            self.title = series18[scheduleRowClicked] + "  " + dates18[scheduleRowClicked]
            games.text = seriesGames18[scheduleRowClicked-1]
            //dateLabel.text = dates18[scheduleRowClicked]
        }
        
    }
}


