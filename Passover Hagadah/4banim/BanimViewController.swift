//
//  BanimViewController.swift
//  Passover Hagadah
//
//  Created by Shana on 16/06/2017.
//  Copyright © 2017 Shana. All rights reserved.
//

import UIKit
import SwiftyGif

class BanimViewController: UIViewController {
    
    @IBOutlet weak var sayingImage: UIImageView!
    @IBOutlet weak var gifImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let gifmanager = SwiftyGifManager(memoryLimit:9)
        gifImage.setGifImage(UIImage(gifName: "4sons.gif"), manager: gifmanager)
        
        sayingImage.isHidden = true
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func showTam(_ sender: UIButton) {
        sayingImage.isHidden = false
        
        sayingImage.image = UIImage(named: "tam.png")
    }
    @IBAction func showSheaino(_ sender: UIButton) {
        sayingImage.isHidden = false
        
        sayingImage.image = UIImage(named: "sheaino.png")
    }
    @IBAction func showRasha(_ sender: UIButton) {
        sayingImage.isHidden = false
        
        sayingImage.image = UIImage(named: "rasha.png")
    }
    @IBAction func showChacham(_ sender: UIButton) {
        sayingImage.isHidden = false
        
        sayingImage.image = UIImage(named: "chacham.png")
    }
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destinationViewController.
     // Pass the selected object to the new view controller.
     }
     */
    
}
