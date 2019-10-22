//
//  Player.swift
//  BuClubApp
//
//  Created by Max Gogats on 10/17/19.
//  Copyright © 2019 Gogats. All rights reserved.
//

import Foundation
import UIKit

class Player {
    var playerPos : String
    var playerName : String
    var playerNumber : String 
    
    init(pos: String, playerName: String, playerNumber: String){
        self.playerPos = pos
        self.playerName = playerName
        self.playerNumber = playerNumber
    }
}
