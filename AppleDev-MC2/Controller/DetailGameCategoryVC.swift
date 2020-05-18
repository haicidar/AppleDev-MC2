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
    
    var category: GameCategory?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let category = category {
            detailGameTitle.text = category.title
            detailGameImage.image = UIImage(named: category.images)
            detailGameDescription.text = category.details
        }
    }
}
