//
//  schedulePopUpVC.swift
//  BuClubApp
//
//  Created by Max Gogats on 11/1/19.
//  Copyright © 2019 Gogats. All rights reserved.
//

import Foundation
import UIKit

class schedulePopUpVC : UIViewController {
    private var leftBarButtonItem : UIBarButtonItem!

    //left button.
    private var navigationLeftButton : UIButton!

    //Your other variable/object declaration.
      func viewDidLoad() {
        super.viewDidLoad()
        self.leftBarButtonItem = UIBarButtonItem()
      }

      func viewDidAppear(animated: Bool) {
          super.viewDidAppear(animated)

          self.setNavigationBackButton()
      }

      private func setNavigationBackButton() {

        if(self.navigationLeftButton == nil) {
            self.navigationLeftButton = UIButton(type: UIButton.ButtonType.system)
        }


        //Styling your navigationLeftButton goes here...

        self.navigationLeftButton.addTarget(self, action: Selector("backButtonTapped"), forControlEvents: UIControl.Event.touchUpInside)
        self.leftBarButtonItem.customView = self.navigationLeftButton
        self.navigationItem.leftBarButtonItem = self.leftBarButtonItem
      }

      func backButtonTapped(AnyObject:sender) {
       // Here add your custom functionalities.
       // Note, this will not pop to previous viewcontroller,
        

      }
    
}


class YourViewController: UIViewController {
//Navigation Items.

//left bar button item.
private var leftBarButtonItem : UIBarButtonItem!

//left button.
private var navigationLeftButton : UIButton!

//Your other variable/object declaration.

  func viewDidLoad() {
    super.viewDidLoad()
    self.leftBarButtonItem = UIBarButtonItem()
  }

  func viewDidAppear(animated: Bool) {
      super.viewDidAppear(animated)

      self.setNavigationBackButton()
  }



  private func setNavigationBackButton() {

    if(self.navigationLeftButton == nil) {
        self.navigationLeftButton = UIButton(type: UIButtonType.System)
    }


    //Styling your navigationLeftButton goes here...

    self.navigationLeftButton.addTarget(self, action: Selector("backButtonTapped"), forControlEvents: UIControlEvents.TouchUpInside)
    self.leftBarButtonItem.customView = self.navigationLeftButton
    self.navigationItem.leftBarButtonItem = self.leftBarButtonItem
  }

  func backButtonTapped(AnyObject:sender) {
   // Here add your custom functionalities.
   // Note, this will not pop to previous viewcontroller,

  }
}
