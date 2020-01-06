//
//  mailingList.swift
//  BuClubApp
//
//  Created by Max Gogats on 11/14/19.
//  Copyright © 2019 Gogats. All rights reserved.
//

import Foundation
import UIKit
import MessageUI

class MailingList : UIViewController{
    @IBOutlet var emailAddress: UITextField!
    @IBOutlet var submissionButton: UIButton!
    var dup : Bool!
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
            emailAddress.text = ""
        } else {
            let checkDup = emailAddress.text!
            let getURL = URL(string: "http://cs.binghamton.edu/~mgogats1/getEmails.php")
            let task1 = URLSession.shared.dataTask(with: getURL!) {(data, response, error) in
                guard let data = data else { return }
                
                let emails = String(data: data, encoding: .utf8)!
                
                if emails.contains(checkDup){
                    self.dup = true
                } else {
                    self.dup = false
                }
            }
            task1.resume()
        }
        
            if(dup == false){
                print("shouldn't be printed")
                let strURL = "https://cs.binghamton.edu/~mgogats1/postEmail.php?email=" + emailAddress.text!
                let url = URL(string: strURL)
                
                let task = URLSession.shared.dataTask(with: url!) {(data, response, error) in
                    guard let data = data else { return }
                    print(String(data: data, encoding: .utf8)!)
                }
    
                task.resume()
            
                let alert = UIAlertController(title: "You've been added to our mailing list!", message: "", preferredStyle:  .alert)
                               alert.addAction(UIAlertAction(title: "Ok", style: .cancel, handler: nil))
                               self.present(alert, animated: true)
                emailAddress.text = ""
                
            } else {
                let duplicate = UIAlertController(title: "Email already in database", message: "", preferredStyle:  .alert)
                duplicate.addAction(UIAlertAction(title: "Ok", style: .cancel, handler: nil))
                self.present(duplicate, animated: true)
                emailAddress.text = ""
            }
    }
    
    func mailComposeController(_ controller: MFMailComposeViewController, didFinishWith result: MFMailComposeResult, error: Error?) {
        controller.dismiss(animated: true)
    }
    
    func jsonToString(json: AnyObject){
        do {
            let data1 =  try JSONSerialization.data(withJSONObject: json, options: JSONSerialization.WritingOptions.prettyPrinted) // first of all convert json to the data
            let convertedString = String(data: data1, encoding: String.Encoding.utf8) // the data will be converted to the string
            print(convertedString ?? "defaultvalue")
        } catch let myJSONError {
            print(myJSONError)
        }
    }
}
