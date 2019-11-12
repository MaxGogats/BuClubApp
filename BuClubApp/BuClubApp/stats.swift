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
    var numRuns : String
    var rbi : String
    
    init(name: String, abs: String, runs: String, hits: String, avg1: String, rbi1: String){
        playerName = name
        ab = abs
        numHits = runs
        avg = hits
        numRuns = runs
        rbi = rbi1
    }
}
