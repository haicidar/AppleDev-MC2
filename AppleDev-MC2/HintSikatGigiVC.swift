//
//  HintSikatGigiVC.swift
//  AppleDev-MC2
//
//  Created by I Dewa Agung Ary Aditya Wibawa on 25/05/20.
//  Copyright © 2020 Group-1. All rights reserved.
//

import UIKit

class HintSikatGigiVC: UIViewController {

    override func viewDidLoad() {
           super.viewDidLoad()
           view.backgroundColor = UIColor(white: 0, alpha: 0.6)
           view.isOpaque = false
           
           //Adding Tap Recognizer to dismiss the hint
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(self.dismissHint))
           view.addGestureRecognizer(tap)
       }
       
       //Function for dismiss the Hint
       @objc func dismissHint(){
           self.dismiss(animated: true, completion: nil)
       }
}
