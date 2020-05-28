//
//  BerhasilMencuciPiringVC.swift
//  AppleDev-MC2
//
//  Created by Intan Yoshana on 26/05/20.
//  Copyright © 2020 Group-1. All rights reserved.
//

import UIKit

class BerhasilCuciPiringVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func toNextLevel(_ sender: UIButton) {
        let storyboard = UIStoryboard(name: "SikatGigi", bundle: nil)
        let myVC = storyboard.instantiateViewController(withIdentifier: "SikatGigi") as! SikatGigiVC
        myVC.modalPresentationStyle = .overCurrentContext
        self.present(myVC, animated: true, completion: nil)
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
