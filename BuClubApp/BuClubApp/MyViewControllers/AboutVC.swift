//
//  AboutVC.swift
//  BuClubApp
//
//  Created by Max Gogats on 10/25/19.
//  Copyright © 2019 Gogats. All rights reserved.


import Foundation
import UIKit

class AboutVC : UIViewController {
    
   
    
    @IBOutlet var teamInfo: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        teamInfo?.numberOfLines = 20
        teamInfo?.font = UIFont(name: "SanFranciscoDisplay-Black", size: CGFloat(16))
        teamInfo?.text = "Competitive Baseball Team participating in the Divison 1 NCBA North Atlantic -West Conference. Home field is at Kirkwood Park in Kirkwood, NY.\n\n\n\t\t"

        teamInfo?.textColor = .black
       

        
    }
}






