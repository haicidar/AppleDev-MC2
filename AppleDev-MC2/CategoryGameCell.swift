//
//  CategoryGameCell.swift
//  AppleDev-MC2
//
//  Created by Intan Yoshana on 14/05/20.
//  Copyright © 2020 Group-1. All rights reserved.
//

import UIKit

protocol CategoryGameDelegate: class {
    func didPressMainkan(index: Int)
}

//protocol CategoryGameDelegate {
//    func didPressMainkan(myData dataobject: AnyObject)
//}

class CategoryGameCell: UITableViewCell {

    @IBOutlet weak var gameDescriptionLabel: UILabel!
    @IBOutlet weak var gameTitleLabel: UILabel!
    @IBOutlet weak var gameCategoryImage: UIImageView!
    @IBOutlet weak var cellButtonMainkan: UIButton!
    
    var currentIndex = Int()
    weak var delegate: CategoryGameDelegate?
    var gameObject: GameCategory? {
        didSet {
            cellConfig()
        }
    }
    
    func cellConfig() {
        guard let obj = gameObject else { return }
        gameTitleLabel.text = obj.title
        gameDescriptionLabel.text = obj.details
        gameCategoryImage.image = UIImage(named: obj.images)
        cellButtonMainkan.addTarget(self, action: #selector(didTapped), for: .touchUpInside)
    }
    
    @objc func didTapped() {
        self.delegate?.didPressMainkan(index: currentIndex)
    }
    
// MARK:  Cell Configuration
    /*
    func configurateThecell(_ gameCategory: GameCategory){
        gameTitleLabel.text = gameCategory.title
        gameDescriptionLabel.text = gameCategory.details
        gameCategoryImage.image = UIImage(named: gameCategory.images)
    }
    */
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        // Configure the view for the selected state
    }

}

