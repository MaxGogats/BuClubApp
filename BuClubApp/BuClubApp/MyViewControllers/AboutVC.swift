//
//  AboutVC.swift
//  BuClubApp
//
//  Created by Max Gogats on 10/25/19.
//  Copyright © 2019 Gogats. All rights reserved.
//

import Foundation
import UIKit
import WebKit

class AboutVC: UIViewController, WKUIDelegate {
    
    @IBOutlet weak var banner: UILabel!
    
    @IBOutlet weak var fb: UILabel!
    @IBOutlet weak var kansas: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        banner.font = UIFont(name: "Copperplate-bold", size: CGFloat(40))
        banner.text = "Binghamton Club Baseball"
        banner.numberOfLines = 2
        banner.textAlignment = .center
        kansas.textAlignment = .center
        fb.textAlignment = .center
        
    }
    
}
