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
    var playerImage : UIImageView
    var playerName : String
    var playerBT : String
    var playerNumber : String 
    
    init(image: UIImageView, playerName: String, bt: String, playerNumber: String){
        self.playerImage = image
        self.playerName = playerName
        self.playerBT = bt
        self.playerNumber = playerNumber
    }
}
