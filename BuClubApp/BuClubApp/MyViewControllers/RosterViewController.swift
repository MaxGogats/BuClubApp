//
//  RosterViewController.swift
//  BuClubApp
//
//  Created by Max Gogats on 10/17/19.
//  Copyright © 2019 Gogats. All rights reserved.
//

import UIKit
import Foundation
import SwiftSoup

class RosterViewController : UIViewController, UITableViewDataSource, UITableViewDelegate{
    
    @IBOutlet weak var tableView: UITableView!
    
    var players : [Player] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        players = createPlayerArray()
        parseExample()
    }
    
    func createPlayerArray() -> [Player] {
        
        var tempPlayers: [Player] = []
        
        //parse data from mlb.com in the future, for now I will simply add a couple examples
        let p1 = Player(pos: "CF/P", playerName: "Max Gogats", playerNumber: "39")
        
        tempPlayers.append(p1)
        return tempPlayers
        }
    
    func parseExample() -> Void{
    do{
        let html = "<html>" +
        "<body>" +
        "<h2>2019-2020 BU Club Baseball Roster</h2>" +
        "<table style='width:100%'>" +
         
        "<tr> +<th align='left'>Number</th> " +
        "<th align='left'>Name</th>" +
        "<th align='left'>Pos</th> </tr>" +
            
        " <tr> <td>39</td> <td>Max Gogats</td><td>CF/P</td> </tr>" +
        "<tr><td>8</td><td>Paul Bev</td><td>C/OF</td></tr>" +
        "<tr><td>22</td><td>TJ Rullo</td><td>P/3B</td> </tr>" +
        "</table> </body> </html>"
    
        let doc: Document = try SwiftSoup.parse(html)
        let td : [Element] = try doc.select("tr td").array()
        
    } catch Exception.Error(let type, let message){
        print("")
    } catch{
        print("")
        }
    }
    
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
    
    


