//
//  RosterCell.swift
//  BuClubApp
//
//  Created by Max Gogats on 10/17/19.
//  Copyright © 2019 Gogats. All rights reserved.
//

import UIKit

class RosterCell: UITableViewCell {
    
    @IBOutlet weak var PlayerPicture: UIImageView!
    @IBOutlet weak var PlayerName: UILabel!
    @IBOutlet weak var PlayerNum: UILabel!
    @IBOutlet weak var PlayerBT: UILabel!
    
    
    func setPlayer(player: Player){
        PlayerPicture.image = player.playerImage
        PlayerName.text = player.playerName
        PlayerNum.text = player.playerNumber
        PlayerBT.text = player.playerBT
    }
    
    
    
   /* override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }*/

}
