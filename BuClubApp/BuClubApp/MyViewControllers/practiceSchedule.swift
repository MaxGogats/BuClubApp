//
//  practiceSchedule.swift
//  BuClubApp
//
//  Created by Max Gogats on 12/9/19.
//  Copyright © 2019 Gogats. All rights reserved.
//

import Foundation
import UIKit

class practiceSchedule : UIViewController{
    
    @IBOutlet var ps: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        ps.numberOfLines = 5
        ps.text = "Tuesday 3-4:30PM @ Intramural Turf\n\nWednesday 5-6:30PM @ Intramural Turf\n\nFriday 3:30-5:30PM @ Kirkwood"
    }
}
