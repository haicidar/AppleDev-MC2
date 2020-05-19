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
    }
}
