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
    let gameTitle = [("Hati-hati, banyak kuman!"),("Waktunya makan!")]
    let gameDetails = [("Ternyata setiap hari kita dikelilingi oleh jutaan kuman! Ayo, cari tahu cara menjauhkan diri kita dari kuman!"), ("Kruyuk... Wah, ada suara perut lapar! Ini waktunya kita makan!  Tapi, perhatikan baik-baik makananmu, ya…")]
    let gameImages = [UIImage(named:"image.Category1"),
                      UIImage(named: "image.Category2")
                      ]
    
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
        return gameTitle.count
    }
    
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 160
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "categoryCell", for: indexPath as IndexPath) as! CategoryGameCell
        cell.gameCategoryImage.image = self.gameImages[indexPath .row]
        cell.gameTitleLabel.text = self.gameTitle[indexPath.row]
        cell.gameDetailLabel.text = self.gameDetails[indexPath.row]
        return cell
    }
    

    
}
