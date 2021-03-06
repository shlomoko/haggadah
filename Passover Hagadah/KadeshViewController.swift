//
//  KadeshViewController.swift
//  Passover Hagadah
//
//  Created by Shana on 17/05/2017.
//  Copyright © 2017 Shana. All rights reserved.
//
import WebKit
import UIKit

class KadeshViewController: UIViewController, UIScrollViewDelegate {
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var textPic: UIImageView!
    @IBOutlet weak var winepic: UIImageView!
    
    @IBOutlet weak var backgroundView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        scrollView.delegate = self
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        winepic.setY(y: scrollView.contentOffset.y * 2 - 100)
        backgroundView.frame.origin.y = scrollView.contentOffset.y
    }
}
