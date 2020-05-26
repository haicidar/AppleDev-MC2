//
//  BerhasilGameLalatVC.swift
//  AppleDev-MC2
//
//  Created by I Dewa Agung Ary Aditya Wibawa on 26/05/20.
//  Copyright © 2020 Group-1. All rights reserved.
//

import UIKit

class BerhasilGameLalatVC: UIViewController {

   override func viewDidLoad() {
           super.viewDidLoad()
           view.backgroundColor = UIColor(white: 0, alpha: 0.6)
           view.isOpaque = false
           
       }
       
       //function for redirect to the next level after click Button on the view
       @IBAction func toNextLevel(_ sender: Any) {
        /*
        let storyBoard : UIStoryboard = UIStoryboard(name: "CuciTangan", bundle:nil)
           let nextViewController = storyBoard.instantiateViewController(withIdentifier: "CuciTangan")
           nextViewController.modalPresentationStyle = .overCurrentContext
           self.present(nextViewController, animated:true, completion:nil)*/
       }

}
