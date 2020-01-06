//
//  PitchingStats.swift
//  BuClubApp
//
//  Created by Max Gogats on 11/18/19.
//  Copyright © 2019 Gogats. All rights reserved.
//

import Foundation
import UIKit

class PitchingStats {
    var name : String
    var wins : String
    var loss : String
    var era : String
    var numSO : String
    var numInnings : String
    
    
    init(player : String, win : String, loss1 : String, era1 : String, numSO1 : String, numInn : String){
        name = player
        wins = win
        loss = loss1
        era = era1
        numSO = numSO1
        numInnings = numInn
    }
}
