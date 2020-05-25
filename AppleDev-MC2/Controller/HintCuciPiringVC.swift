//
//  HintMencuciPiringVC.swift
//  AppleDev-MC2
//
//  Created by Intan Yoshana on 26/05/20.
//  Copyright © 2020 Group-1. All rights reserved.
//

import UIKit

class HintCuciPiringVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = UIColor(white: 0, alpha: 0.6)
        view.isOpaque = false
        
        //tap recognizer to dismiss the hint
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(self.dismissHint))
        view.addGestureRecognizer(tap)
    }
    
    @objc func dismissHint(){
           self.dismiss(animated: true, completion: nil)

    }
}
