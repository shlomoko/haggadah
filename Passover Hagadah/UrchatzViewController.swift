//
//  UrchatzViewController.swift
//  Passover Hagadah
//
//  Created by Shana on 16/06/2017.
//  Copyright © 2017 Shana. All rights reserved.
//
import SwiftyGif
import UIKit

class UrchatzViewController: UIViewController {

    @IBOutlet weak var staticImage: UIImageView!
    @IBOutlet weak var gifImage: UIImageView!
    @IBOutlet weak var natlaView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        gifImage.isHidden = true

        let tap = UILongPressGestureRecognizer(target: self, action: #selector(tapHandler))
        tap.allowableMovement = 10.0
        tap.minimumPressDuration = 0
        natlaView.addGestureRecognizer(tap)
        
        staticImage.image = UIImage(named: "urchatz.jpg")
        let gifmanager = SwiftyGifManager(memoryLimit:9)
        self.gifImage.setGifImage(UIImage(gifName: "urchatz.gif"), manager: gifmanager)
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tapHandler(gesture: UITapGestureRecognizer) {
        
        // handle touch down and touch up events separately
        if gesture.state == .began {
            gifImage.isHidden = false
            staticImage.isHidden = true
        } else if  gesture.state == .ended {
            gifImage.isHidden = true
            staticImage.isHidden = false
        }
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
