//
//  DetailGameCategoryVCViewController.swift
//  AppleDev-MC2
//
//  Created by Intan Yoshana on 15/05/20.
//  Copyright © 2020 Group-1. All rights reserved.
//

import UIKit

class DetailGameCategoryVC: UIViewController {
    
    
    @IBOutlet var detailGameLevel: [UIButton]!
    @IBOutlet weak var detailGameDescription: UILabel!
    @IBOutlet weak var detailGameImage: UIImageView!
    @IBOutlet weak var detailGameTitle: UILabel!
    var levels = GameLevel.createGameLevel()

    var categories = [GameCategory]()
    var index = Int()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print(index)
        detailGameTitle.text = categories[index].title
        detailGameImage.image = UIImage(named: categories[index].images)
        detailGameDescription.text = categories[index].details
        
        for (levelButton,level)  in zip(detailGameLevel,levels) {
            levelButton.setTitle(level.title, for: .normal)
            levelButton.tag = level.tag
        }
        
        self.navigationController?.navigationBar.backIndicatorImage = UIImage(named: "icon.Back")
        self.navigationController?.navigationBar.backIndicatorTransitionMaskImage = UIImage(named: "icon.Back")
        self.navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: UIBarButtonItem.Style.plain, target: nil, action: nil)
    }
    
    @IBAction func selectLevel1(_ sender: UIButton) {
        let storyboard = UIStoryboard(name: "CuciTangan", bundle: nil)
        let myVC = storyboard.instantiateViewController(withIdentifier: "CuciTangan") as! CuciTanganVC
        myVC.modalPresentationStyle = .overCurrentContext
        self.present(myVC, animated: true, completion: nil)
    }
    
    @IBAction func selectLevel2(_ sender: UIButton) {
        let storyboard = UIStoryboard(name: levels[sender.tag].game, bundle: nil)
        let myVC = storyboard.instantiateViewController(withIdentifier: "\(levels[sender.tag].game)") as! SikatGigiVC
        myVC.modalPresentationStyle = .overCurrentContext
        self.present(myVC, animated: true, completion: nil)
    }
    
    @IBAction func selectLevel3(_ sender: UIButton) {
        let storyboard = UIStoryboard(name: levels[sender.tag].game, bundle: nil)
        let myVC = storyboard.instantiateViewController(withIdentifier: "\(levels[sender.tag].game)") as! GameLalatVC
        myVC.modalPresentationStyle = .overCurrentContext
        self.present(myVC, animated: true, completion: nil)
    }
    
    
//    func customizeNavBar() {
//        self.navigationController?.navigationBar.backIndicatorImage = UIImage(named: "icon.Back")
//        self.navigationController?.navigationBar.backIndicatorTransitionMaskImage = UIImage(named: "icon.Back")
//        self.navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: UIBarButtonItem.Style.plain, target: nil, action: nil)
//    }
//
 }
