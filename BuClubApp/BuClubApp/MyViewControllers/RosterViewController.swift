//
//  RosterViewController.swift
//  BuClubApp
//
//  Created by Max Gogats on 10/17/19.
//  Copyright © 2019 Gogats. All rights reserved.
//

import UIKit


class RosterViewController : UIViewController {
    
    
    @IBOutlet weak var tableView: UITableView!
    
    
    var players : [Player] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        players = createPlayerArray()
        
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    func createPlayerArray() -> [Player] {
        
        var tempPlayers: [Player] = []
        
        let tanaka = UIImage(named: "tanaka")
        //parse data from mlb.com in the future, for now I will simply add a couple examples
        let p1 = Player(image: tanaka!, playerName: "Masahiro Tanaka", bt: "R/R", playerNumber: "19")
        
        tempPlayers.append(p1)
        
        return tempPlayers
        
        }
    }
    
    extension RosterViewController : UITableViewDataSource, UITableViewDelegate {
        
        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return players.count
        }
        
        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let player = players[indexPath.row]
            
            let cell = tableView.dequeueReusableCell(withIdentifier: "PlayerCell") as! RosterCell
            
            cell.setPlayer(player: player)
            return cell
            
        }
        
    }

