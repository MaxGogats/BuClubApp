//
//  AboutVC.swift
//  BuClubApp
//
//  Created by Max Gogats on 10/25/19.
//  Copyright © 2019 Gogats. All rights reserved.

import Foundation
import UIKit
import WebKit

import Foundation
import UIKit

/*
 Possibly add an email text input for adding to the email list
 */


class AboutVC: UIViewController{
    @IBOutlet var titleBing: UILabel!
    @IBOutlet var photosButton: UIButton!
    @IBOutlet var infoBlurb: UILabel!
    @IBOutlet var joinMail: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        titleBing.textAlignment = .center
        titleBing.font = UIFont(name: "EuphemiaUCAS-Bold", size: CGFloat(24))
        titleBing.text = "Binghamton Club Baseball"
        titleBing.numberOfLines = 2
        
        
        infoBlurb.numberOfLines = 20
        infoBlurb.font = UIFont(name: "SanFranciscoDisplay-Black", size: CGFloat(16))
        infoBlurb.text = "Competitive Baseball Team participating in the Divison 1 NCBA North Atlantic -West Conference. Home field is at Kirkwood Park in Kirkwood, NY.\n\n\n\t\t      Practice Schedule\n\nTuesday 3-4:30PM @ Intramural Turf\n\nWednesday 5-6:30PM @ Intramural Turf\n\nFriday 3:30-5:30PM @ Kirkwood"
        
        infoBlurb.textColor = .white
        titleBing.textColor = .white 
        
        joinMail.titleLabel?.font = UIFont(name: "SanFranciscoDisplay-Black", size: CGFloat(16))
        
       photosButton.titleLabel?.font = UIFont(name: "SanFranciscoDisplay-Black", size: CGFloat(18))
        photosButton.titleLabel?.textAlignment = .center
        
    }
}

