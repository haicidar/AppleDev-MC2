//
//  GameLalatVC.swift
//  AppleDev-MC2
//
//  Created by I Dewa Agung Ary Aditya Wibawa on 26/05/20.
//  Copyright © 2020 Group-1. All rights reserved.
//

import UIKit

class GameLalatVC: UIViewController {

    @IBOutlet weak var hintLabel: UILabel!
    @IBOutlet weak var mieBowl: UIImageView!
    @IBOutlet weak var answer: UILabel!
    
    var currentAnswer = 0
    var attemptRemaining = 3
    override func viewDidLoad() {
        super.viewDidLoad()
        
        mieBowl.addGestureRecognizer(bowlDragged)
        mieBowl.isUserInteractionEnabled = true
        
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
    
    
    @IBOutlet weak var buttonHint: UIButton!
    @IBAction func showHint(_ sender: Any) {
        if attemptRemaining <= 1{
                     buttonHint.isEnabled = false
                 }
            attemptRemaining-=1
            hintLabel.text = "\(attemptRemaining)"
            print(attemptRemaining)
            let storyBoard : UIStoryboard = UIStoryboard(name: "GameLalat", bundle:nil)
            let nextViewController = storyBoard.instantiateViewController(withIdentifier: "HintGameLalat")
            nextViewController.modalPresentationStyle = .overCurrentContext
            self.present(nextViewController, animated:true, completion:nil)
    }
    
    @IBOutlet weak var stepperKanan: UIButton!
    @IBAction func stepperKananAction(_ sender: Any) {
        currentAnswer+=1
        answer.text = "\(currentAnswer)"
        if currentAnswer != 0 {
            stepperKiri.isEnabled = true
            stepperKiri.setBackgroundImage(#imageLiteral(resourceName: "asset.StepperLeftEnabled"), for: UIControl.State.normal)
        }
    }
    
    @IBOutlet weak var stepperKiri: UIButton!
    @IBAction func stepperKiriAction(_ sender: Any) {
        if currentAnswer == 0{
            stepperKiri.isEnabled = false
            stepperKiri.setBackgroundImage(#imageLiteral(resourceName: "asset.StepperLeftDisabled"), for: UIControl.State.normal)
        }
        else{
            stepperKiri.isEnabled = true
            currentAnswer-=1
            answer.text = "\(currentAnswer)"
            stepperKiri.setBackgroundImage(#imageLiteral(resourceName: "asset.StepperLeftEnabled"), for: UIControl.State.normal)
        }
    }
    
    @IBOutlet weak var submitAnswer: UIButton!
    @IBAction func checkAnswer(_ sender: Any) {
        if currentAnswer == 11{
            submitAnswer.setBackgroundImage(#imageLiteral(resourceName: "buttonBase.LevelEnabled"), for: UIControl.State.normal)
            let storyBoard : UIStoryboard = UIStoryboard(name: "GameLalat", bundle:nil)
            let nextViewController = storyBoard.instantiateViewController(withIdentifier: "BerhasilGameLalat")
            nextViewController.modalPresentationStyle = .overCurrentContext
            self.present(nextViewController, animated:true, completion:nil)

        }
        else{
           submitAnswer.setBackgroundImage(#imageLiteral(resourceName: "buttonBase.Wrong"), for: UIControl.State.normal)
            submitAnswer.setTitleColor(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), for: UIControl.State.normal)
        }
    }
    

    @IBOutlet var bowlDragged: UIPanGestureRecognizer!
    @IBAction func dragBowl(_ sender: UIPanGestureRecognizer) {
        
        let translation = sender.translation(in: mieBowl)
        sender.view!.center = CGPoint (x: sender.view!.center.x + translation.x, y: sender.view!.center.y + translation.y)
        
        sender.setTranslation(CGPoint.zero, in: self.view)
    }
    

}
