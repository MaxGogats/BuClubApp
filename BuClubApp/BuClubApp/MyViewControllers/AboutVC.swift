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
    @IBOutlet weak var kansas: UILabel!
    @IBOutlet weak var pic: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        banner.font = UIFont(name: "Copperplate-bold", size: CGFloat(40))
        banner.text = "Binghamton Club Baseball"
        banner.textColor = .white
        banner.numberOfLines = 2
        banner.textAlignment = .center
        kansas.textAlignment = .center
        kansas.textColor = .white
        
        banner.alpha = 0
        kansas.alpha = 0
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        UIView.animate(withDuration: 2.2){
                   self.banner.alpha = 1.0
                   self.kansas.alpha = 1.0
                   self.pic.alpha = 1.0
               }
    }
    
}
