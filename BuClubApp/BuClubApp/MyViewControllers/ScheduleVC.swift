    //
    //  scheduleVC.swift
    //  BuClubApp
    //
    //  Created by Max Gogats on 10/28/19.
    //  Copyright © 2019 Gogats. All rights reserved.
    //

    import Foundation
    import UIKit

    var series: [String] = []
    var seriesScores: [String] = []
    var scheduleRowClicked = -1 
    
    class ScheduleVC: UIViewController, UITableViewDataSource, UITableViewDelegate{
       
        @IBOutlet weak var tableView: UITableView!
        
       /*
         1. Add future games into the view
         2. Add dates for the games
         3. Add winning / losing pitchers for the games
         4. add little scroll bar that you can see the schedule from last year (ambitious)
        */
        
        override func viewDidLoad() {
            super.viewDidLoad()
            
            tableView.dataSource = self
            tableView.delegate = self
            
            
            series.append("Series")
            series.append("BU @ Cortland")
            series.append("Fordham @ BU")
            series.append("Brockport @ BU")
            series.append("Slippery Rock @ BU")
            series.append("BU @ Pitt")
            
            seriesScores.append("W-L (Bing)")
            seriesScores.append("0-2")
            seriesScores.append("1-1")
            seriesScores.append("2-1")
            seriesScores.append("2-1")
            seriesScores.append("1-2")
            
            
        }
        
        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return series.count
        }
        
        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            
            let cell = tableView.dequeueReusableCell(withIdentifier: "scheduleCell") as! scheduleCell
            let game = series[indexPath.row]
            let score = seriesScores[indexPath.row]
            
            //setting label attributes
            cell.game.text = game
            cell.score.text = score
            
            cell.game.font = UIFont(name: "EuphemiaUCAS-Bold", size: CGFloat(18))
            cell.score.font = UIFont(name: "EuphemiaUCAS-Bold", size: CGFloat(18))
        
            return cell
        }
        
        func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
            return CGFloat(100)
        }
        
        func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
               scheduleRowClicked = indexPath.row
           }
        
    }
