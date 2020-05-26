//
//  BerhasilCuciTanganVC.swift
//  AppleDev-MC2
//
//  Created by I Dewa Agung Ary Aditya Wibawa on 19/05/20.
//  Copyright © 2020 Group-1. All rights reserved.
//

import UIKit

class BerhasilCuciTanganVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        super.viewDidLoad()
        view.backgroundColor = UIColor(white: 0, alpha: 0.6)
        view.isOpaque = false
        
        //adding tap recognizer for redirect to the next level
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: "toNextLevel")
        view.addGestureRecognizer(tap)
    }
    
    //function for redirect to the next level after tap anywhere on the view
    @objc func toNextLevel(){
        /*let storyBoard : UIStoryboard = UIStoryboard(name: "CuciTangan", bundle:nil)
        let nextViewController = storyBoard.instantiateViewController(withIdentifier: "HintCuciTangan")
        nextViewController.modalPresentationStyle = .overCurrentContext
        self.present(nextViewController, animated:true, completion:nil)*/
    }

}
