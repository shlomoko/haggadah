//
//  ShfochViewController.swift
//  Passover Hagadah
//
//  Created by Shana on 26/05/2017.
//  Copyright © 2017 Shana. All rights reserved.
//

import UIKit

class ShfochViewController: MainViewController {

    init() {
        super.init(resource: "shfoch")
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
