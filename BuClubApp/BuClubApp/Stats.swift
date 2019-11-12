//
//  stats.swift
//  BuClubApp
//
//  Created by Max Gogats on 10/26/19.
//  Copyright © 2019 Gogats. All rights reserved.
//

import Foundation

import UIKit

class Stats {
    var playerName : String
    var ab : String
    var numHits : String
    var avg : String
    var numRuns : String
    var rbi : String
    
    init(name: String, abs: String, hits: String, average: String, runs: String, ribby: String){
        playerName = name
        ab = abs
        numHits = hits
        avg = average
        numRuns = runs
        rbi = ribby
    }
}


//ab, hits, avg, rbi 
