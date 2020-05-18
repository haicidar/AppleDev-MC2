//
//  ChooseGameCategoryVC.swift
//  AppleDev-MC2
//
//  Created by Intan Yoshana on 14/05/20.
//  Copyright © 2020 Group-1. All rights reserved.
//

import UIKit

class ChooseGameCategoryVC: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet var tableViewCategory: UITableView!
    let identifier: String = "categoryCell"
    var categories = GameCategory.createGameCategory()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        tableViewCategory.delegate = self
        tableViewCategory.dataSource = self
        // Do any additional setup after loading the view.
    }
    
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return categories.count
    }
    
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 160
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: identifier) as? CategoryGameCell {
            cell.configurateThecell(categories[indexPath.row])
            return cell
        }
        return UITableViewCell()
    }
    
 
    
//    // MARK:  Segue Method
    
}
