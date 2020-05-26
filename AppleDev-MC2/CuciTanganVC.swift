//
//  CuciTanganVC.swift
//  AppleDev-MC2
//
//  Created by I Dewa Agung Ary Aditya Wibawa on 18/05/20.
//  Copyright © 2020 Group-1. All rights reserved.
//

import UIKit

class CuciTanganVC: UIViewController {

    //Declare the step Image Outlet
    @IBOutlet weak var langkahCuciTangan: UIImageView!
    @IBOutlet weak var hintLabel: UILabel!
    
    //Variable Decleration
    var attemptRemaining : Int = 3
    var cuciTanganImages : [UIImage] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        cuciTanganImages = imageArray(total: 6, imagePrefix: "gerakan")
        cuciTanganAnimasi(imageView: langkahCuciTangan, images: cuciTanganImages)
        hintLabel.text = "\(attemptRemaining)"
    }
    
    //Function for append the image from assets to animate later
    func imageArray(total: Int, imagePrefix: String)->[UIImage]{
        
        var arrayImage: [UIImage] = []
        
        for i in 1..<total{
            let imageName = "\(imagePrefix)\(i).png"
            let image = UIImage(named: imageName)!
            
            arrayImage.append(image)
        }
        return arrayImage
    }
    
    //Function for the animation
    func cuciTanganAnimasi(imageView: UIImageView, images: [UIImage]){
        imageView.animationImages = images
        imageView.animationDuration = 2.2
        imageView.animationRepeatCount = -1
        imageView.startAnimating()
    }
      
    //Setup LongPress Gesture
    @IBOutlet var pressLong: UILongPressGestureRecognizer!
    @IBAction func longPressGesture(_ sender: UILongPressGestureRecognizer) {
        if sender.state == .began {
            let storyBoard : UIStoryboard = UIStoryboard(name: "CuciTangan", bundle:nil)
            let nextViewController = storyBoard.instantiateViewController(withIdentifier: "BerhasilCuciTangan")
            nextViewController.modalPresentationStyle = .overCurrentContext
            self.present(nextViewController, animated:true, completion:nil)
        }
    }
    
    //Setup Cuci Tangan Button
    @IBOutlet weak var buttonStartCuci: UIButton!
    @IBAction func startCuci(_ sender: UIButton) {
        buttonStartCuci.addGestureRecognizer(pressLong)
        longPressGesture(pressLong)
        pressLong.minimumPressDuration = 20
    }
    
    
    //Setup Back Button
    @IBAction func goingBack(_ sender: Any) {
        //Disesuaikan dengan Page Pilih Level
        /*let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle:nil)
        let nextViewController = storyBoard.instantiateViewControllerWithIdentifier("nextView") as NextViewController
        self.presentViewController(nextViewController, animated:true, completion:nil)*/
        
    }
    
    
    //Setup Hint Button and Hint Remaining Mark
    @IBOutlet weak var buttonHint: UIButton!
    @IBAction func showHint(_ sender: UIButton) {
        if attemptRemaining <= 1{
                 buttonHint.isEnabled = false
             }
        attemptRemaining-=1
        hintLabel.text = "\(attemptRemaining)"
        print(attemptRemaining)
        let storyBoard : UIStoryboard = UIStoryboard(name: "CuciTangan", bundle:nil)
        let nextViewController = storyBoard.instantiateViewController(withIdentifier: "HintCuciTangan")
        nextViewController.modalPresentationStyle = .overCurrentContext
        self.present(nextViewController, animated:true, completion:nil)
        
    }


}


