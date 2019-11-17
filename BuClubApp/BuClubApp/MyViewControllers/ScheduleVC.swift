    //
    //  scheduleVC.swift
    //  BuClubApp
    //
    //  Created by Max Gogats on 10/28/19.
    //  Copyright © 2019 Gogats. All rights reserved.
    //
    import Foundation
    import UIKit
    
    var series19: [String] = []
    var seriesScores19: [String] = []
    
    var scheduleRowClicked = -1
    
    var series18 : [String] = []
    var seriesScores18 : [String] = []
   
    var year18 : Bool = true
    
    class ScheduleVC: UIViewController, UITableViewDataSource, UITableViewDelegate{
        
        @IBOutlet var selectYear: UISegmentedControl!
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
            
            series19.append("Series")
            series19.append("BU @ Cortland")
            series19.append("Fordham @ BU")
            series19.append("Brockport @ BU")
            series19.append("Slippery Rock @ BU")
            series19.append("BU @ Pitt")
            series19.append("BU @ Penn St")
            series19.append("BU @ Cornell")
            
            seriesScores19.append("W-L (Bing)")
            seriesScores19.append("0-2")
            seriesScores19.append("1-1")
            seriesScores19.append("2-1")
            seriesScores19.append("2-1")
            seriesScores19.append("1-2")
            seriesScores19.append("0-0")
            seriesScores19.append("0-0")
            
            series18.append("Series")
            series18.append("Oneonta @ BU")
            series18.append("Clarkson @ BU")
            series18.append("Oswego @ BU")
            series18.append("BU @ Cortland")
            series18.append("Rochester Playoffs")
            series18.append("Kansas D2 Playoffs")
            
            seriesScores18.append("W-L (Bing)")
            seriesScores18.append("3-0")
            seriesScores18.append("3-0")
            seriesScores18.append("3-0")
            seriesScores18.append("3-0")
            seriesScores18.append("3-0")
            seriesScores18.append("1-2")
            
            selectYear.selectedSegmentIndex = 1
            selectYear.addTarget(self, action: #selector(refreshScene), for: .valueChanged)
            
        }
        
        @objc func refreshScene(sender: UISegmentedControl){
            tableView.reloadData()
        }
        
        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            
            if(selectYear.selectedSegmentIndex == 1){
                year18 = false
                return series19.count
            } else {
                year18 = true
                return series18.count
            }
        }
        
        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            
            let cell = tableView.dequeueReusableCell(withIdentifier: "scheduleCell") as! scheduleCell
            
            if(selectYear.selectedSegmentIndex == 1){
                let game = series19[indexPath.row]
                let score = seriesScores19[indexPath.row]
                
                //setting label attributes
                cell.game.text = game
                cell.score.text = score
                
                cell.game.font = UIFont(name: "EuphemiaUCAS-Bold", size: CGFloat(18))
                cell.score.font = UIFont(name: "EuphemiaUCAS-Bold", size: CGFloat(18))
                
                return cell
            
            } else {
                
                let game = series18[indexPath.row]
                let score = seriesScores18[indexPath.row]
                
                //setting label attributes
                cell.game.text = game
                cell.score.text = score
                
                cell.game.font = UIFont(name: "EuphemiaUCAS-Bold", size: CGFloat(18))
                cell.score.font = UIFont(name: "EuphemiaUCAS-Bold", size: CGFloat(18))
                
                return cell
            }
        }
        
        func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
            return CGFloat(100)
        }
        
        func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
            scheduleRowClicked = indexPath.row
        }
    }
