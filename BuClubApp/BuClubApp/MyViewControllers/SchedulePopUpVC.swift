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
    
    override func viewDidLoad() {
       
        super.viewDidLoad()
        
        score.font = UIFont(name: "HelveticaNeue-Bold", size: 25)
        score.numberOfLines = 2
        score.textAlignment = .center
        score.text = series[scheduleRowClicked]
    }
    
    /*scores.append("L 2-4")
    scores.append("L 4-6")
    
    scores.append("W 6-7")
    scores.append("L 9-3")
    
    scores.append("W 2-7")
    scores.append("W 0-6")
    scores.append("L 8-7")
    
    scores.append("W 0-4")
    scores.append("W 2-4")
    scores.append("L 4-3")
    
    scores.append("L 4-5")
    scores.append("L 2-7")
    scores.append("W 4-1")*/
    
    
}


