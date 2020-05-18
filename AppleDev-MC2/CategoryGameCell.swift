//
//  CategoryGameCell.swift
//  AppleDev-MC2
//
//  Created by Intan Yoshana on 14/05/20.
//  Copyright © 2020 Group-1. All rights reserved.
//

import UIKit

//protocol CategoryGameDelegate{
//    func didPressMainkan(title: String)
//}

protocol CategoryGameDelegate {
    func didPressMainkan(myData dataobject: AnyObject)
}

class CategoryGameCell: UITableViewCell {

    @IBOutlet weak var gameDescriptionLabel: UILabel!
    @IBOutlet weak var gameTitleLabel: UILabel!
    @IBOutlet weak var gameCategoryImage: UIImageView!
    @IBOutlet weak var cellButtonMainkan: UIButton!
    
    var delegate:CategoryGameDelegate!
    
    override func prepareForReuse() {
        super.prepareForReuse()
        gameTitleLabel.text = nil
        gameDescriptionLabel.text = nil
        gameCategoryImage.image = nil
    }
    
    
    @IBAction func buttonMainkanPressed(_ sender: Any) {
        if(self.delegate != nil){
        }
//        var mydata = "Anydata you want to send to the next controller"
//        if(self.delegate != nil){
//            self.delegate.callSegueFromCell(mydata as AnyObject)
//    }
    }
    
// MARK:  Cell Configuration
    func configurateThecell(_ gameCategory: GameCategory){
        gameTitleLabel.text = gameCategory.title
        gameDescriptionLabel.text = gameCategory.details
        gameCategoryImage.image = UIImage(named: gameCategory.images)
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        // Configure the view for the selected state
    }

}

