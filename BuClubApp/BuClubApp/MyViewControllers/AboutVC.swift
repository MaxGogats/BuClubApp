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

class AboutVC: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate{
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 5
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        //let size = CGSize(width: collectionView.frame.width/2, height: collectionView.frame.width)
        let size = CGSize(width: CGFloat(50), height: CGFloat(50))
        return size
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath) as! collectionViewCell
        
       // var images = [UIImage]()
        cell.backgroundColor = .green
        
        return cell
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}

