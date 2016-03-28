//
//  HapinessVC.swift
//  StanfordHappyFaceApp
//
//  Created by Volodymyr Romanov on 3/27/16.
//  Copyright © 2016 Volodymyr Romanov. All rights reserved.
//

import UIKit

class HapinessVC: UIViewController, FaceViewDataSource {
    @IBOutlet weak var faceView: FaceView! {
        didSet {
            faceView.dataSource = self
        }
    }
    
    //MODEL!
    var happiness: Int = 10 { // 0 = very sad, 100 = ecstatic
        didSet {
            happiness = min(max(happiness, 0), 100)
            print("happiness = \(happiness)")
            updateUI()
        }
    }
    
    func updateUI() {
        faceView.setNeedsDisplay()
    }
    
    func smilinessForFaceView(sender: FaceView) -> Double? {
        return Double(happiness-50)/50
    }
}
