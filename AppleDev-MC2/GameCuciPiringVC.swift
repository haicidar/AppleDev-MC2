//
//  GameCuciPiringVC.swift
//  AppleDev-MC2
//
//  Created by Intan Yoshana on 19/05/20.
//  Copyright © 2020 Group-1. All rights reserved.
//

import UIKit

class GameCuciPiringVC: UIViewController {
    
    @IBOutlet weak var buttonHint: UIButton!
    @IBOutlet weak var hintLabel: UILabel!
    @IBOutlet weak var imgKotoran6: UIImageView!
    @IBOutlet weak var imgKotoran5: UIImageView!
    @IBOutlet weak var imgKotoran4: UIImageView!
    @IBOutlet weak var imgKotoran3: UIImageView!
    @IBOutlet weak var imgKotoran2: UIImageView!
    @IBOutlet weak var imgKotoran1: UIImageView!
    @IBOutlet weak var imgPiring: UIImageView!
    @IBOutlet weak var imgSponge: UIImageView!
    
    var imgSpongeOrigin: CGPoint!
    var imgKotoran1Origin: CGPoint!
    var hintRemaining : Int = 3
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        addPanGesture(view: imgSponge)
        imgSpongeOrigin = imgSponge.frame.origin
        imgKotoran1Origin = imgKotoran1.frame.origin
        view.bringSubviewToFront(imgSponge)
        hintLabel.text = "\(hintRemaining)"
    }
    
//    @IBAction func handlePan(_ gesture: UIPanGestureRecognizer) {
//     // 1
//     let translation = gesture.translation(in: view)
//
//     // 2
//     guard let gestureView = gesture.view else {
//       return
//     }
//
//     gestureView.center = CGPoint(
//       x: gestureView.center.x + translation.x,
//       y: gestureView.center.y + translation.y
//     )
//
//     // 3
//     gesture.setTranslation(.zero, in: view)
//
//
//
//   }

    func addPanGesture(view: UIView){
        let pan = UIPanGestureRecognizer(target: self, action: #selector(GameCuciPiringVC.handlePanSponge(sender:)))
             view.addGestureRecognizer(pan)
    }
    
    @objc func handlePanSponge(sender: UIPanGestureRecognizer){
        let imgSpongeSender = sender.view!
        switch sender.state {
        case .began, .changed:
            moveViewWithPanGesture(view: imgSpongeSender, sender: sender)

        case .ended:
            if imgSpongeSender.frame.intersects(imgKotoran1.frame) {
                deleteImgKotoranView(view: imgKotoran1)
            } else if imgSpongeSender.frame.intersects(imgKotoran2.frame){
                deleteImgKotoranView(view: imgKotoran2)
            } else if imgSpongeSender.frame.intersects(imgKotoran3.frame){
                deleteImgKotoranView(view: imgKotoran3)
            } else if imgSpongeSender.frame.intersects(imgKotoran4.frame){
                deleteImgKotoranView(view: imgKotoran4)
            } else if imgSpongeSender.frame.intersects(imgKotoran5.frame){
                deleteImgKotoranView(view: imgKotoran5)
            } else if imgSpongeSender.frame.intersects(imgKotoran6.frame){
                deleteImgKotoranView(view: imgKotoran6)
            }
        default:
            break
        }
    }
    
    func moveViewWithPanGesture(view: UIView, sender: UIPanGestureRecognizer){

        let translation = sender.translation (in: view)
         view.center = CGPoint(x: view.center.x + translation.x,
                               y: view.center.y + translation.y)
         sender.setTranslation(CGPoint.zero, in: view)
    }
    
    func deleteImgKotoranView (view: UIView) {
        UIView.animate(withDuration: 0.1, animations: {
            view.alpha = 0.0
        })
    }
    
    
    @IBAction func showHint(_ sender: Any) {
        if hintRemaining <= 1 {
            buttonHint.isEnabled = false
        }
        hintRemaining-=1
        hintLabel.text = "\(hintRemaining)"
        print(hintRemaining)
        let storyBoard : UIStoryboard = UIStoryboard (name: "GameCuciPiring", bundle: nil)
        let nextViewController = storyBoard.instantiateViewController(withIdentifier: "HintCuciPiring")
        nextViewController.modalPresentationStyle = .overCurrentContext
        self.present(nextViewController, animated:true, completion:nil)
    }
}
