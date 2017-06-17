//
//  YachatzViewController.swift
//  Passover Hagadah
//
//  Created by Shana on 26/05/2017.
//  Copyright © 2017 Shana. All rights reserved.
//

import UIKit
import SwiftyGif

class YachatzViewController: UIViewController {

    @IBOutlet weak var Btn1: UIButton!
    @IBOutlet weak var btn2: UIButton!
    @IBOutlet weak var btn3: UIButton!
    @IBOutlet weak var btn4: UIButton!
    @IBOutlet weak var btn5: UIButton!

    @IBOutlet weak var topText: UIImageView!
    @IBOutlet weak var yachatzText: UIImageView!
    @IBOutlet weak var bottomText: UIImageView!
    
    @IBOutlet weak var renewBtn: UIButton!
    
    @IBOutlet weak var jpgImage: UIImageView!
    @IBOutlet weak var backgroundImage: UIImageView!
    let gifmanager = SwiftyGifManager(memoryLimit:9)
    override func viewDidLoad() {
        super.viewDidLoad()
       showInitialImage()
    }
    
    func showInitialImage(){
        DispatchQueue.main.async {
            self.jpgImage.isHidden = true
            self.backgroundImage.isHidden = false
            self.backgroundImage.setGifImage(UIImage(gifName: "matzasml.gif"), manager: self.gifmanager)
        }
        renewBtn.isHidden = true
        topText.isHidden = false
        bottomText.isHidden = false
    }

    @IBAction func renewAction(_ sender: UIButton) {
        showInitialImage()
    }
    
    @IBAction func btnAction(_ sender: UIButton) {
        backgroundImage.isHidden = true
        jpgImage.isHidden = false
        renewBtn.isHidden = false
        topText.isHidden = true
        bottomText.isHidden = true
        switch sender {
        case Btn1:
            jpgImage.image = UIImage(named: "1.jpg")
        case btn2:
            jpgImage.image = UIImage(named: "2.jpg")
        case btn3:
            jpgImage.image = UIImage(named: "3.jpg")
        case btn4:
            jpgImage.image = UIImage(named: "4.jpg")
        case btn5:
            jpgImage.image = UIImage(named: "5.jpg")
        default:
            break
        }
    }
}
