//
//  LangkahSikatGigiVC.swift
//  AppleDev-MC2
//
//  Created by I Dewa Agung Ary Aditya Wibawa on 25/05/20.
//  Copyright © 2020 Group-1. All rights reserved.
//

import UIKit

class LangkahSikatGigiVC: UIViewController {

    @IBOutlet weak var timeRemaining: UILabel!
    var time = 5
    var timer = Timer()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(self.action), userInfo: nil, repeats: true)
    }
    
    @objc func action(){
        time-=1
        timeRemaining.text = "\(time)"
        if time == 0{
            let storyBoard : UIStoryboard = UIStoryboard(name: "SikatGigi", bundle:nil)
            let nextViewController = storyBoard.instantiateViewController(withIdentifier: "SikatGigi")
            nextViewController.modalPresentationStyle = .overCurrentContext
            self.present(nextViewController, animated:true, completion:nil)
        }
    }
    
    @IBOutlet weak var backButton: UIButton!
    @IBAction func goingBack(_ sender: Any) {
        //Disesuaikan dengan Page Pilih Level
        /*let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle:nil)
        let nextViewController = storyBoard.instantiateViewControllerWithIdentifier("nextView") as NextViewController
        self.presentViewController(nextViewController, animated:true, completion:nil)*/
    }

}
