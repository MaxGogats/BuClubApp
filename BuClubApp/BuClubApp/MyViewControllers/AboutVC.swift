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
    @IBOutlet weak var pic: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let font = UIFont.systemFont(ofSize: 18, weight: UIFont.Weight.bold)
        
        banner.font = font
        banner.text = "Binghamton Club Baseball"
        banner.textColor = .black
        banner.numberOfLines = 2
        banner.textAlignment = .center
        banner.alpha = 0
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        UIView.animate(withDuration: 1.0){
                   self.banner.alpha = 1.0
                   self.pic.alpha = 1.0
               }
    }
    
}
