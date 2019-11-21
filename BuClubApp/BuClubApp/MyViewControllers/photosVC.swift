//
//  photosVC.swift
//  BuClubApp
//
//  Created by Max Gogats on 11/13/19.
//  Copyright © 2019 Gogats. All rights reserved.
//

import Foundation
import UIKit

class photosVC : UIViewController, UIScrollViewDelegate {
    @IBOutlet var imgv: UIImageView!
    @IBOutlet var scroll: UIScrollView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        scroll.delegate = self
    }
    
    func viewForZooming(in scrollView: UIScrollView) -> UIView? {
        return imgv
    }
    
}


/*
 Taken from https://stackoverflow.com/questions/30014241/uiimageview-pinch-zoom-swift
 Can't tell if it works until I get my adapter!
 */
extension UIImageView {
  func enableZoom() {
    let pinchGesture = UIPinchGestureRecognizer(target: self, action: #selector(startZooming(_:)))
    isUserInteractionEnabled = true
    addGestureRecognizer(pinchGesture)
  }

  @objc
  private func startZooming(_ sender: UIPinchGestureRecognizer) {
    let scaleResult = sender.view?.transform.scaledBy(x: sender.scale, y: sender.scale)
    guard let scale = scaleResult, scale.a > 1, scale.d > 1 else { return }
    sender.view?.transform = scale
    sender.scale = 1
  }
}
