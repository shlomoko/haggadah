//
//  KadeshViewController.swift
//  Passover Hagadah
//
//  Created by Shana on 17/05/2017.
//  Copyright © 2017 Shana. All rights reserved.
//
import WebKit
import UIKit

class KadeshViewController: MainViewController {
    init() {
        super.init(resource: "kadesh")
    }
    
    required convenience init?(coder aDecoder: NSCoder) {
        self.init()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
