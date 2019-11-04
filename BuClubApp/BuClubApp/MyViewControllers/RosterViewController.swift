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

var players : [Player] = []
var rowClicked : Int = 0
 var name = [String]()

class RosterViewController : UIViewController, UITableViewDataSource, UITableViewDelegate{
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        players = createPlayerArray()
        
    }
    
    func createPlayerArray() -> [Player] {
        
        let topPlayer = Player(pos: "Position", playerName: "Name", playerNumber: "#")
        players.append(topPlayer)
        
        let numPlayers = 29
        
        do{
            
        /* HTML taken from
    https://www.clubbaseball.org/league/team/?team=36c1ba31-b586-4be7-a37b-343c6d9363ee&season=46d3ea9a-a080-4273-befb-58b30c2adb01#team-player/
        */
            let html =
                "<html>" +
                "<body>" +
                "<table style='width:100%'>" +
                "<tr> +<th align='left'>Number</th> " +
                "<th align='left'>Name</th>" +
                "<th align='left'>Pos</th> </tr>" +
                "<tr><td>8</td><td>Paul Bevilacqua</td><td>OF/C</td><tr>" +
                "<td>23</td><td>Nicholas Casabianca</td><td>FLEX/C</td>" +
                "<tr><td>10</td><td>Sam Cook</td><td>3B/C</td></tr>" +
                "<tr><td>27</td><td>Aidan Dadabo</td><td>OF/P</td>" +
                "<tr><td>10</td><td>Nicholas Dejewski</td><td>P</td>" +
                "<tr><td>44</td><td>Nicholas Dennis</td><td>OF/3B</td></tr>" +
                "<tr><td>21</td><td>Kyle Dragunat</td><td>P/3B</td></tr>" +
                "</tr><tr>98<td>13</td><td>Will Florio</td><td>SS/UT</td>" +
                "<tr><td>6</td><td> Brian Giarraputo</td><td>P/UT</td>" +
                "</tr><tr><td>39</td><td>Max Gogats</td><td>CF/P</td>" +
                "<tr><td>16</td><td>Steven Hansen Jr</td><td>RHP</td>" +
                "<tr><td>19</td><td>Daniel Hennie</td><td>SS/OF</td></tr>" +
                "<tr><td>97</td><td>Matthew Lindley</td><td>RHP</td></tr>" +
                "<tr><td>99</td><td>Paul McGee</td><td>OF/C</td></tr>" +
                "<tr><td>3</td><td>Ryan McGrath</td><td>RHP</td></tr>" +
                "<tr><td>11</td><td>Takenari Miki</td><td>2B/OF</td></tr>" +
                "<tr><td>5</td><td>Luke Mischo</td><td>2B/DH</td></tr>" +
                "<tr><td>33</td><td>Joseph Murray</td><td>OF/P</td></tr>" +
                "<tr><td>19</td><td>Jake Nicklas</td><td>RHP</td></tr>" +
                "<tr><td>14</td><td>Andrew Pederson</td><td>P/FLEX</td></tr>" +
                "<tr><td>52</td><td>Joseph Petrucci</td><td>C</td>" +
                "</tr><tr><td>18</td><td>Alexander Rajovic</td><td>OF/P</td>" +
                "</tr><tr><td>22</td><td>Thomas Rullo</td><td>P/3B</td>" +
                "</tr><tr><td>40</td><td>Drew Schwartz</td><td>LHP</td></tr>" +
                "<tr><td>17</td><td>Stephen Smith</td><td>P</td>" +
                "</tr><tr><td>28</td><td>Nick Stanton</td><td>1B</td>" +
                "</tr><tr><td>4</td><td>Michael Wagner</td><td>SS/2B</td>" +
                "</tr><tr><td>17</td><td>Matthew Walsh</td><td>OF</td>" +
                "</tr><tr><td>31</td><td>Jesse Weinberg</td><td>C</td>" +
                "</tr><tr><td>9</td><td> Brandon Xhunga</td><td>2B,SS,3B</td></tr></tbody>        </table> </html>"
            
        
            let doc: Document = try SwiftSoup.parse(html)
            let td : [Element] = try doc.getElementsByTag("td").array()
        
            var pos = [String]()
            var num = [String]()
           
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
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return players.count
    }
        
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let player = players[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "PlayerCell") as! RosterCell
        
        cell.setPlayer(player: player)
        
        return cell
            
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        rowClicked = indexPath.row
    }
    
}
    
    


