//
//  mailingList.swift
//  BuClubApp
//
//  Created by Max Gogats on 11/14/19.
//  Copyright © 2019 Gogats. All rights reserved.
//

import Foundation
import UIKit

class MailingList : UIViewController{
    @IBOutlet var emailAddress: UITextField!
    @IBOutlet var submissionButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        emailAddress.backgroundColor = UIColor.clear
        emailAddress.textAlignment = .center
        
        
        
    }
    
    
}
