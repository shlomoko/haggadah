//
//  BarechViewController.swift
//  Passover Hagadah
//
//  Created by Shana on 20/06/2017.
//  Copyright © 2017 Shana. All rights reserved.
//

import SwiftyGif
import UIKit


class BarechViewController: UIViewController, UIScrollViewDelegate {

    @IBOutlet weak var scrollView: UIScrollView!

    @IBOutlet weak var cupImage: UIImageView!
    @IBOutlet weak var backgroundView: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()
        scrollView.delegate = self
    
        cupImage.isUserInteractionEnabled = true
        let tap = UILongPressGestureRecognizer(target: self, action: #selector(tapHandler))
        tap.allowableMovement = 10.0
        tap.minimumPressDuration = 0
        cupImage.addGestureRecognizer(tap)
        

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        backgroundView.frame.origin.y = scrollView.contentOffset.y
    }
    
    func tapHandler(gesture: UITapGestureRecognizer) {
        
        // handle touch down and touch up events separately
        if gesture.state == .began {
            cupImage.loadGif(name: "barech_cup_gif")
        } else if  gesture.state == .ended {
            cupImage.image = UIImage(named: "barech_cup.png")
        }
    }


}
