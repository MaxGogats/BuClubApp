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
        
        //emailAddress.backgroundColor = UIColor.clear
        emailAddress.textAlignment = .center
        emailAddress.placeholder = "Enter email!"
        
        submissionButton.addTarget(self, action: #selector(sendEmail), for: .touchUpInside)
    }
    
    @objc func sendEmail(sender: UIButton!){
        if(emailAddress.text!.contains("@") == false || emailAddress.text!.contains(".") == false){
            
            let alert = UIAlertController(title: "Please Enter A Valid Email Address!", message: "", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "Ok", style: .cancel, handler: nil))
            self.present(alert, animated: true)
        }
    }
}
