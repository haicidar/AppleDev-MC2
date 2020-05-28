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

    var categories = [GameCategory]()
    var index = Int()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print(index)
        detailGameTitle.text = categories[index].title
        detailGameImage.image = UIImage(named: categories[index].images)
        detailGameDescription.text = categories[index].details
        
        
        self.navigationController?.navigationBar.backIndicatorImage = UIImage(named: "icon.Back")
        self.navigationController?.navigationBar.backIndicatorTransitionMaskImage = UIImage(named: "icon.Back")
        self.navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: UIBarButtonItem.Style.plain, target: nil, action: nil)
    }
    
    @IBAction func selectLevel1(_ sender: UIButton) {
        var name = "GameLalat"
        if index == 0{
            name = "CuciTangan"
            let storyboard = UIStoryboard(name: name, bundle: nil)
            let myVC = storyboard.instantiateViewController(withIdentifier: name) as! CuciTanganVC
            myVC.modalPresentationStyle = .overCurrentContext
            self.present(myVC, animated: true, completion: nil)
        } else {
            let storyboard = UIStoryboard(name: name, bundle: nil)
            let myVC = storyboard.instantiateViewController(withIdentifier: name) as! GameLalatVC
            myVC.modalPresentationStyle = .overCurrentContext
            self.present(myVC, animated: true, completion: nil)
        }
    }
    
    @IBAction func selectLevel2(_ sender: UIButton) {
        var name = "GameMakan1"
        if index == 0{
            name = "GameCuciPiring"
            let storyboard = UIStoryboard(name: name, bundle: nil)
            let myVC = storyboard.instantiateViewController(withIdentifier: name) as! GameCuciPiringVC
            myVC.modalPresentationStyle = .overCurrentContext
            self.present(myVC, animated: true, completion: nil)
        } else {
            let storyboard = UIStoryboard(name: name, bundle: nil)
            let myVC = storyboard.instantiateViewController(withIdentifier: name) as! GameMakan1VC
            myVC.modalPresentationStyle = .overCurrentContext
            self.present(myVC, animated: true, completion: nil)
        }
    }
    
    @IBAction func selectLevel3(_ sender: UIButton) {
        var name = "GameMakan2"
        if index == 0{
            name = "LangkahSikatGigi"
            let storyboard = UIStoryboard(name: "SikatGigi", bundle: nil)
            let myVC = storyboard.instantiateViewController(withIdentifier: name) as! LangkahSikatGigiVC
            myVC.modalPresentationStyle = .overCurrentContext
            self.present(myVC, animated: true, completion: nil)
        } else {
            let storyboard = UIStoryboard(name: name, bundle: nil)
            let myVC = storyboard.instantiateViewController(withIdentifier: name) as! GameMakan2VC
            myVC.modalPresentationStyle = .overCurrentContext
            self.present(myVC, animated: true, completion: nil)
        }
    }
 }
