//
//  DetailGameCategoryVCViewController.swift
//  AppleDev-MC2
//
//  Created by Intan Yoshana on 15/05/20.
//  Copyright © 2020 Group-1. All rights reserved.
//

import UIKit

class DetailGameCategoryVC: UIViewController {

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
    
//    func customizeNavBar() {
//        self.navigationController?.navigationBar.backIndicatorImage = UIImage(named: "icon.Back")
//        self.navigationController?.navigationBar.backIndicatorTransitionMaskImage = UIImage(named: "icon.Back")
//        self.navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: UIBarButtonItem.Style.plain, target: nil, action: nil)
//    }
//
 }
