//
//  SikatGigiVC.swift
//  AppleDev-MC2
//
//  Created by I Dewa Agung Ary Aditya Wibawa on 25/05/20.
//  Copyright © 2020 Group-1. All rights reserved.
//

import UIKit

class SikatGigiVC: UIViewController {
    
    @IBOutlet weak var step1: UIImageView!
    @IBOutlet weak var step2: UIImageView!
    @IBOutlet weak var step3: UIImageView!
    @IBOutlet weak var step4: UIImageView!
    @IBOutlet weak var step5: UIImageView!
    @IBOutlet weak var step6: UIImageView!
    
    
    @IBOutlet weak var hintLabel: UILabel!
    
    var currentStep = 1
    var attemptRemaining = 3
    var checkPoint = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        step1.image = #imageLiteral(resourceName: "asset.BaseHighlighted")
        step2.image = #imageLiteral(resourceName: "asset.BaseDisabled")
        step3.image = #imageLiteral(resourceName: "asset.BaseDisabled")
        step4.image = #imageLiteral(resourceName: "asset.BaseDisabled")
        step5.image = #imageLiteral(resourceName: "asset.BaseDisabled")
        step6.image = #imageLiteral(resourceName: "asset.BaseDisabled")
        
    }
    
    @IBOutlet weak var randomStepOne: UIButton! 
    @IBAction func randomeOneAction(_ sender: UIButton) {
            if step1.image == #imageLiteral(resourceName: "asset.BaseHighlighted") {
                step1.image = #imageLiteral(resourceName: "asset.SikatGigi3")
                step2.image = #imageLiteral(resourceName: "asset.BaseHighlighted")
                randomStepOne.isHidden = true
            }
            else if step2.image == #imageLiteral(resourceName: "asset.BaseHighlighted") {
                step2.image = #imageLiteral(resourceName: "asset.SikatGigi3")
                step3.image = #imageLiteral(resourceName: "asset.BaseHighlighted")
                randomStepOne.isHidden = true
            }
            else if step3.image == #imageLiteral(resourceName: "asset.BaseHighlighted") {
                step3.image = #imageLiteral(resourceName: "asset.SikatGigi3")
                step4.image = #imageLiteral(resourceName: "asset.BaseHighlighted")
                randomStepOne.isHidden = true
            }
            else if step4.image == #imageLiteral(resourceName: "asset.BaseHighlighted") {
                step4.image = #imageLiteral(resourceName: "asset.SikatGigi3")
                step5.image = #imageLiteral(resourceName: "asset.BaseHighlighted")
                randomStepOne.isHidden = true
            }
            else if step5.image == #imageLiteral(resourceName: "asset.BaseHighlighted") {
                step5.image = #imageLiteral(resourceName: "asset.SikatGigi3")
                step6.image = #imageLiteral(resourceName: "asset.BaseHighlighted")
                randomStepOne.isHidden = true
            }
            else if step6.image == #imageLiteral(resourceName: "asset.BaseHighlighted") {
                step6.image = #imageLiteral(resourceName: "asset.SikatGigi3")
                randomStepOne.isHidden = true
                checkGame()
            }
    }
    
    @IBOutlet weak var randomStepTwo: UIButton!
    @IBAction func randomeTwoAction(_ sender: UIButton) {
            if step1.image == #imageLiteral(resourceName: "asset.BaseHighlighted") {
                step1.image = #imageLiteral(resourceName: "asset.SikatGigi5")
                step2.image = #imageLiteral(resourceName: "asset.BaseHighlighted")
                randomStepTwo.isHidden = true
            }
            else if step2.image == #imageLiteral(resourceName: "asset.BaseHighlighted") {
                step2.image = #imageLiteral(resourceName: "asset.SikatGigi5")
                step3.image = #imageLiteral(resourceName: "asset.BaseHighlighted")
                randomStepTwo.isHidden = true
            }
            else if step3.image == #imageLiteral(resourceName: "asset.BaseHighlighted") {
                step3.image = #imageLiteral(resourceName: "asset.SikatGigi5")
                step4.image = #imageLiteral(resourceName: "asset.BaseHighlighted")
                randomStepTwo.isHidden = true
            }
            else if step4.image == #imageLiteral(resourceName: "asset.BaseHighlighted") {
                step4.image = #imageLiteral(resourceName: "asset.SikatGigi5")
                step5.image = #imageLiteral(resourceName: "asset.BaseHighlighted")
                randomStepTwo.isHidden = true
            }
            else if step5.image == #imageLiteral(resourceName: "asset.BaseHighlighted") {
                step5.image = #imageLiteral(resourceName: "asset.SikatGigi5")
                step6.image = #imageLiteral(resourceName: "asset.BaseHighlighted")
                randomStepTwo.isHidden = true
            }
            else if step6.image == #imageLiteral(resourceName: "asset.BaseHighlighted") {
                step6.image = #imageLiteral(resourceName: "asset.SikatGigi5")
                randomStepTwo.isHidden = true
                checkGame()
            }
    }
    
    
    @IBOutlet weak var randomStepThree: UIButton!
    @IBAction func randomThreeAction(_ sender: UIButton) {
            if step1.image == #imageLiteral(resourceName: "asset.BaseHighlighted") {
                step1.image = #imageLiteral(resourceName: "asset.SikatGigi1")
                step2.image = #imageLiteral(resourceName: "asset.BaseHighlighted")
                randomStepThree.isHidden = true
            }
            else if step2.image == #imageLiteral(resourceName: "asset.BaseHighlighted") {
                step2.image = #imageLiteral(resourceName: "asset.SikatGigi1")
                step3.image = #imageLiteral(resourceName: "asset.BaseHighlighted")
                randomStepThree.isHidden = true
            }
            else if step3.image == #imageLiteral(resourceName: "asset.BaseHighlighted") {
                step3.image = #imageLiteral(resourceName: "asset.SikatGigi1")
                step4.image = #imageLiteral(resourceName: "asset.BaseHighlighted")
                randomStepThree.isHidden = true
            }
            else if step4.image == #imageLiteral(resourceName: "asset.BaseHighlighted") {
                step4.image = #imageLiteral(resourceName: "asset.SikatGigi1")
                step5.image = #imageLiteral(resourceName: "asset.BaseHighlighted")
                randomStepThree.isHidden = true
            }
            else if step5.image == #imageLiteral(resourceName: "asset.BaseHighlighted") {
                step5.image = #imageLiteral(resourceName: "asset.SikatGigi1")
                step6.image = #imageLiteral(resourceName: "asset.BaseHighlighted")
                randomStepThree.isHidden = true
            }
            else if step6.image == #imageLiteral(resourceName: "asset.BaseHighlighted") {
                step6.image = #imageLiteral(resourceName: "asset.SikatGigi1")
                randomStepThree.isHidden = true
                checkGame()
            }
    }
    
    @IBOutlet weak var randomStepFour: UIButton!
    @IBAction func randomFourAction(_ sender: UIButton) {
            if step1.image == #imageLiteral(resourceName: "asset.BaseHighlighted") {
                step1.image = #imageLiteral(resourceName: "asset.SikatGigi6")
                step2.image = #imageLiteral(resourceName: "asset.BaseHighlighted")
                randomStepFour.isHidden = true
            }
            else if step2.image == #imageLiteral(resourceName: "asset.BaseHighlighted") {
                step2.image = #imageLiteral(resourceName: "asset.SikatGigi6")
                step3.image = #imageLiteral(resourceName: "asset.BaseHighlighted")
                randomStepFour.isHidden = true
            }
            else if step3.image == #imageLiteral(resourceName: "asset.BaseHighlighted") {
                step3.image = #imageLiteral(resourceName: "asset.SikatGigi6")
                step4.image = #imageLiteral(resourceName: "asset.BaseHighlighted")
                randomStepFour.isHidden = true
            }
            else if step4.image == #imageLiteral(resourceName: "asset.BaseHighlighted") {
                step4.image = #imageLiteral(resourceName: "asset.SikatGigi6")
                step5.image = #imageLiteral(resourceName: "asset.BaseHighlighted")
                randomStepFour.isHidden = true
            }
            else if step5.image == #imageLiteral(resourceName: "asset.BaseHighlighted") {
                step5.image = #imageLiteral(resourceName: "asset.SikatGigi6")
                step6.image = #imageLiteral(resourceName: "asset.BaseHighlighted")
                randomStepFour.isHidden = true
            }
            else if step6.image == #imageLiteral(resourceName: "asset.BaseHighlighted") {
                step6.image = #imageLiteral(resourceName: "asset.SikatGigi6")
                randomStepFour.isHidden = true
                checkGame()
            }
    }
    
    @IBOutlet weak var randomStepFive: UIButton!
    @IBAction func randomFiveAction(_ sender: UIButton) {
            if step1.image == #imageLiteral(resourceName: "asset.BaseHighlighted") {
                step1.image = #imageLiteral(resourceName: "asset.SikatGigi4")
                step2.image = #imageLiteral(resourceName: "asset.BaseHighlighted")
                randomStepFive.isHidden = true
            }
            else if step2.image == #imageLiteral(resourceName: "asset.BaseHighlighted") {
                step2.image = #imageLiteral(resourceName: "asset.SikatGigi4")
                step3.image = #imageLiteral(resourceName: "asset.BaseHighlighted")
                randomStepFive.isHidden = true
            }
            else if step3.image == #imageLiteral(resourceName: "asset.BaseHighlighted") {
                step3.image = #imageLiteral(resourceName: "asset.SikatGigi4")
                step4.image = #imageLiteral(resourceName: "asset.BaseHighlighted")
                randomStepFive.isHidden = true
            }
            else if step4.image == #imageLiteral(resourceName: "asset.BaseHighlighted") {
                step4.image = #imageLiteral(resourceName: "asset.SikatGigi4")
                step5.image = #imageLiteral(resourceName: "asset.BaseHighlighted")
                randomStepFive.isHidden = true
            }
            else if step5.image == #imageLiteral(resourceName: "asset.BaseHighlighted") {
                step5.image = #imageLiteral(resourceName: "asset.SikatGigi4")
                step6.image = #imageLiteral(resourceName: "asset.BaseHighlighted")
                randomStepFive.isHidden = true
            }
            else if step6.image == #imageLiteral(resourceName: "asset.BaseHighlighted") {
                step6.image = #imageLiteral(resourceName: "asset.SikatGigi4")
                randomStepFive.isHidden = true
                checkGame()
            }
    }
    
    @IBOutlet weak var randomStepSix: UIButton!
    @IBAction func randomSixAction(_ sender: UIButton) {
            if step1.image == #imageLiteral(resourceName: "asset.BaseHighlighted") {
                step1.image = #imageLiteral(resourceName: "asset.SikatGigi2")
                step2.image = #imageLiteral(resourceName: "asset.BaseHighlighted")
                randomStepSix.isHidden = true
            }
            else if step2.image == #imageLiteral(resourceName: "asset.BaseHighlighted") {
                step2.image = #imageLiteral(resourceName: "asset.SikatGigi2")
                step3.image = #imageLiteral(resourceName: "asset.BaseHighlighted")
                randomStepSix.isHidden = true
            }
            else if step3.image == #imageLiteral(resourceName: "asset.BaseHighlighted") {
                step3.image = #imageLiteral(resourceName: "asset.SikatGigi2")
                step4.image = #imageLiteral(resourceName: "asset.BaseHighlighted")
                randomStepSix.isHidden = true
            }
            else if step4.image == #imageLiteral(resourceName: "asset.BaseHighlighted") {
                step4.image = #imageLiteral(resourceName: "asset.SikatGigi2")
                step5.image = #imageLiteral(resourceName: "asset.BaseHighlighted")
                randomStepSix.isHidden = true
            }
            else if step5.image == #imageLiteral(resourceName: "asset.BaseHighlighted") {
                step5.image = #imageLiteral(resourceName: "asset.SikatGigi2")
                step6.image = #imageLiteral(resourceName: "asset.BaseHighlighted")
                randomStepSix.isHidden = true
            }
            else if step6.image == #imageLiteral(resourceName: "asset.BaseHighlighted") {
                step6.image = #imageLiteral(resourceName: "asset.SikatGigi2")
                randomStepSix.isHidden = true
                checkGame()
            }
    }
    
    
    
    @IBOutlet weak var buttonHint: UIButton!
    @IBAction func showHint(_ sender: Any) {
        if attemptRemaining <= 1{
            buttonHint.isEnabled = false
        }
        attemptRemaining-=1
        hintLabel.text = "\(attemptRemaining)"
        print(attemptRemaining)
        let storyBoard : UIStoryboard = UIStoryboard(name: "SikatGigi", bundle:nil)
        let nextViewController = storyBoard.instantiateViewController(withIdentifier: "HintSikatGigi")
        nextViewController.modalPresentationStyle = .overCurrentContext
        self.present(nextViewController, animated:true, completion:nil)
    }
    
    @IBOutlet weak var backButton: UIButton!
    @IBAction func goingBack(_ sender: Any) {
        let storyboard = UIStoryboard(name: "DetailGameCategory", bundle: nil)
        let myVC = storyboard.instantiateViewController(withIdentifier: "DetailGameCategoryVC") as! DetailGameCategoryVC
        myVC.index = 0
        myVC.categories = GameCategory.createGameCategory()
        myVC.modalPresentationStyle = .overCurrentContext
        self.present(myVC, animated: true, completion: nil)
        //Disesuaikan dengan Page Pilih Level
        /*let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle:nil)
        let nextViewController = storyBoard.instantiateViewControllerWithIdentifier("nextView") as NextViewController
        self.presentViewController(nextViewController, animated:true, completion:nil)*/
    }
    
    func checkGame(){
        if step1.image == #imageLiteral(resourceName: "asset.SikatGigi1") {
            checkPoint+=1
        }
        if step2.image == #imageLiteral(resourceName: "asset.SikatGigi2") {
            checkPoint+=1
        }
        if step3.image == #imageLiteral(resourceName: "asset.SikatGigi3") {
            checkPoint+=1
        }
        if step4.image == #imageLiteral(resourceName: "asset.SikatGigi4") {
            checkPoint+=1
        }
        if step5.image == #imageLiteral(resourceName: "asset.SikatGigi5") {
            checkPoint+=1
        }
        if step6.image == #imageLiteral(resourceName: "asset.SikatGigi6") {
            checkPoint+=1
        }
        
        if checkPoint == 6{
            let storyBoard : UIStoryboard = UIStoryboard(name: "SikatGigi", bundle:nil)
            let nextViewController = storyBoard.instantiateViewController(withIdentifier: "BerhasilSikatGigi")
            nextViewController.modalPresentationStyle = .overCurrentContext
            self.present(nextViewController, animated:true, completion:nil)
        }
        if checkPoint < 6{
            let storyBoard : UIStoryboard = UIStoryboard(name: "SikatGigi", bundle:nil)
            let nextViewController = storyBoard.instantiateViewController(withIdentifier: "SikatGigi")
            nextViewController.modalPresentationStyle = .overCurrentContext
            self.present(nextViewController, animated:true, completion:nil)
        }
    }
    


}
