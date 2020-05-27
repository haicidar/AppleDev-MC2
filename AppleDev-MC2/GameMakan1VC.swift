//
//  GameLalatVC.swift
//  AppleDev-MC2
//
//  Created by I Dewa Agung Ary Aditya Wibawa on 26/05/20.
//  Copyright © 2020 Group-1. All rights reserved.
//

import UIKit

class GameMakan1VC: UIViewController {

    @IBOutlet weak var hintLabel: UILabel!
    @IBOutlet var foods: [UIImageView]!
    var attemptRemaining = 3
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        mieBowl.addGestureRecognizer(bowlDragged)
//        mieBowl.isUserInteractionEnabled = true
        
    }
    
    @IBOutlet weak var backButton: UIButton!
    @IBAction func goingBack(_ sender: Any) {
        let storyboard = UIStoryboard(name: "DetailGameCategory", bundle: nil)
        let myVC = storyboard.instantiateViewController(withIdentifier: "DetailGameCategoryVC") as! DetailGameCategoryVC
        myVC.index = 1
        myVC.categories = GameCategory.createGameCategory()
        myVC.modalPresentationStyle = .overCurrentContext
        self.present(myVC, animated: true, completion: nil)
    }
    
    @IBAction func piringClicked(_ sender: UIButton) {
        let storyBoard : UIStoryboard = UIStoryboard(name: "GameMakan1", bundle:nil)
        let nextViewController = storyBoard.instantiateViewController(withIdentifier: "BerhasilGameMakan1")
        nextViewController.modalPresentationStyle = .overCurrentContext
        self.present(nextViewController, animated:true, completion:nil)
    }
    
    @IBOutlet weak var buttonHint: UIButton!
    @IBAction func showHint(_ sender: Any) {
        if attemptRemaining <= 1{
                     buttonHint.isEnabled = false
                 }
            attemptRemaining-=1
            hintLabel.text = "\(attemptRemaining)"
            print(attemptRemaining)
            let storyBoard : UIStoryboard = UIStoryboard(name: "GameMakan1", bundle:nil)
            let nextViewController = storyBoard.instantiateViewController(withIdentifier: "HintGameMakan1")
            nextViewController.modalPresentationStyle = .overCurrentContext
            self.present(nextViewController, animated:true, completion:nil)
    }

    @IBAction func dragFood(_ sender: UIPanGestureRecognizer) {
        
        let translation = sender.translation(in: self.view)
        sender.view!.center = CGPoint (x: sender.view!.center.x + translation.x, y: sender.view!.center.y + translation.y)
        
        sender.setTranslation(CGPoint.zero, in: self.view)
    }
}
