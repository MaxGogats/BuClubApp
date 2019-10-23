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
        
        let topPlayer = Player(pos: "Position", playerName: "Name", playerNumber: "#")
        players.append(topPlayer)
        var tempPlayers: [Player] = []
        var numPlayers = 29
        /*//parse data from mlb.com in the future, for now I will simply add a couple examples
        let p1 = Player(pos: "CF/P", playerName: "Max Gogats", playerNumber: "39")
        
        tempPlayers.append(p1)
        return tempPlayers*/
        
        do{
            /*"<html>" +
            "<body>" +
            "<h2>2019-2020 BU Club Baseball Roster</h2>" +
            "<table style='width:100%'>" +
             
            "<tr> +<th align='left'>Number</th> " +
            "<th align='left'>Name</th>" +
            "<th align='left'>Pos</th> </tr>" +
                
            " <tr> <td>39</td> <td>Max Gogats</td><td>CF/P</td> </tr>" +
            "<tr><td>8</td><td>Paul Bev</td><td>C/OF</td></tr>" +
            "<tr><td>22</td><td>TJ Rullo</td><td>P/3B</td> </tr>" +
            "</table> </body> </html>"*/
            
            let html =
                "<html>" +
                "<body>" +
                "<table style='width:100%'>" +
                "<tr> +<th align='left'>Number</th> " +
                "<th align='left'>Name</th>" +
                "<th align='left'>Pos</th> </tr>" +
                "<tr><td>8</td><td>Bevilacqua, Paul</td><td>OF/C</td><tr>" +
                "<td>23</td><td>Casabianca, Nicholas</td><td>FLEX/C</td>" +
                "<tr><td>10</td><td>Cook, Samuel</td><td>3B/C</td></tr>" +
                "<tr><td>27</td><td>Dadabo, Aidan</td><td>OF/P</td>" +
                "<tr><td>10</td><td>Dejewski, Nicholas</td><td>P</td>" +
                "<tr><td>44</td><td>Dennis, Nicholas</td><td>OF/3B</td></tr>" +
                "<tr><td>21</td><td>Dragunat, Kyle</td><td>P/3B</td></tr>" +
                "</tr><tr>98<td>13</td><td>Florio, Will</td><td>SS/UT</td>" +
                "<tr><td>6</td><td> Giarraputo, Brian</td><td>P/UT</td>" +
                "</tr><tr><td>39</td><td> Gogats, Max</td><td>CF/P</td>" +
                "<tr><td>16</td><td> Hansen Jr, Steven</td><td>RHP</td>" +
                "<tr><td>19</td><td> Hennie, Daniel</td><td>SS/OF</td></tr>" +
                "<tr><td>97</td><td> Lindley, Matthew</td><td>RHP</td></tr>" +
                "<tr><td>99</td><td> McGee, Paul</td><td>OF/C</td></tr>" +
                "<tr><td>3</td><td> McGrath, Ryan</td><td>RHP</td></tr>" +
                "<tr><td>11</td><td> Miki, Takenari</td><td>2B/OF</td></tr>" +
                "<tr><td>5</td><td> Mischo, Luke</td><td>2B/DH</td></tr>" +
                "<tr><td>33</td><td> Murray, Joseph</td><td>OF/P</td></tr>" +
                "<tr><td>19</td><td> Nicklas, Jake</td><td>RHP</td></tr>" +
                "<tr><td>14</td><td> Pederson, Andrew</td><td>P/FLEX</td></tr>" +
                "<tr><td>52</td><td> Petrucci, Joseph</td><td>C</td>" +
                "</tr><tr><td>18</td><td> Rajovic, Alexander</td><td>OF/P</td>" +
                "</tr><tr><td>22</td><td> Rullo, Thomas</td><td>P/3B</td>" +
                "</tr><tr><td>40</td><td> Schwartz, Drew</td><td>LHP</td></tr>" +
                "<tr><td>17</td><td> Smith, Stephen</td><td>P</td>" +
                "</tr><tr><td>28</td><td> Stanton, Nick</td><td>1B</td>" +
                "</tr><tr><td>4</td><td> Wagner, Michael</td><td>SS/2B</td>" +
                "</tr><tr><td>17</td><td>Walsh, Matthew</td><td>OF</td>" +
                "</tr><tr><td>31</td><td>Weinberg, Jesse</td><td>C</td>" +
                "</tr><tr><td>9</td><td> Xhunga, Brandon</td><td>2B,SS,3B</td></tr></tbody>        </table> </html>"
            
        
            let doc: Document = try SwiftSoup.parse(html)
            let td : [Element] = try doc.getElementsByTag("td").array()
        
            var pos = [String]()
            var num = [String]()
            var name = [String]()
            var count = 0
            var used = false
            
            for info in td {
                used = false
                let stripped = try info.text()
                
                if stripped.contains(" "){
                    name.append(stripped)
                    used = true
                }
                
                //checks if string only contains numbers
                let decimalChars = CharacterSet.decimalDigits
                let decimalRange = stripped.rangeOfCharacter(from: decimalChars)
                let letters = NSCharacterSet.letters
                let range = stripped.rangeOfCharacter(from: letters)
                
                
                if decimalRange != nil {
                    if let test = range{
                        
                    } else {
                         num.append(stripped)
                         used = true
                    }
                }
                
                if used == false {
                    pos.append(stripped)
                }
                
            }
            
           for n in 0..<numPlayers{
                let p1 = Player(pos: pos[n], playerName: name[n], playerNumber: num[n])
                players.append(p1)
            }
            
        } catch Exception.Error(let type, let message){
            print("")
        } catch{
            print("")
            }
        
        //TODO: somehow using my three arrays create the players and add into the array
        return players
    }
    
    
    func parseExample() -> Void{
    
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
    
    


