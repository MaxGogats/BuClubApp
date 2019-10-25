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

class AboutVC: UIViewController,  WKUIDelegate {
    
    @IBOutlet weak var banner: UILabel!
    @IBOutlet weak var facebook: WKWebView!
    
    override func loadView() {
        
        let webConfiguration = WKWebViewConfiguration()
        facebook = WKWebView(frame: CGRect(x: 150, y: 150, width: 150, height: 150), configuration: webConfiguration)
        facebook.uiDelegate = self
        view = facebook
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        banner.font = UIFont(name: "Copperplate-bold", size: CGFloat(40))
        banner.text = "Binghamton Club Baseball"
        banner.numberOfLines = 2
        banner.textAlignment = .center
        
        let myURL = URL(string:"https://www.facebook.com/binghamtonclubbaseball")
        let myRequest = URLRequest(url: myURL!)
        facebook.load(myRequest)
    }
}
