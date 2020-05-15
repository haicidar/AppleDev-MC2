//
//  CategoryGameCell.swift
//  AppleDev-MC2
//
//  Created by Intan Yoshana on 14/05/20.
//  Copyright © 2020 Group-1. All rights reserved.
//

import UIKit

class CategoryGameCell: UITableViewCell {

    @IBOutlet weak var gameDetailLabel: UILabel!
    @IBOutlet weak var gameTitleLabel: UILabel!
    @IBOutlet weak var gameCategoryImage: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
