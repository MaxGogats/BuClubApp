//
//  stats.swift
//  BuClubApp
//
//  Created by Max Gogats on 10/26/19.
//  Copyright © 2019 Gogats. All rights reserved.
//

import Foundation

import UIKit

class stats {
    var playerName : String
    var ab : String
    var numHits : String
    var avg : String
    var obp : String
    var rbi : String
    
    init(name: String, abs: String, numHits1: String, avg1: String, obp1: String, rbi1: String){
        playerName = name
        ab = abs
        numHits = numHits1
        avg = avg1
        obp = obp1
        rbi = rbi1
    }
}
