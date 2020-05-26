//
//  GameCuciPiringVC.swift
//  AppleDev-MC2
//
//  Created by Intan Yoshana on 19/05/20.
//  Copyright © 2020 Group-1. All rights reserved.
//

import UIKit

class GameCuciPiringVC: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
    }
    
   @IBAction func handlePan(_ gesture: UIPanGestureRecognizer) {
     // 1
     let translation = gesture.translation(in: view)

     // 2
     guard let gestureView = gesture.view else {
       return
     }

     gestureView.center = CGPoint(
       x: gestureView.center.x + translation.x,
       y: gestureView.center.y + translation.y
     )

     // 3
     gesture.setTranslation(.zero, in: view)
   }

}
