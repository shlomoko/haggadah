//
//  BetzetViewController.swift
//  Passover Hagadah
//
//  Created by Shana on 26/05/2017.
//  Copyright © 2017 Shana. All rights reserved.
//

import UIKit

class BetzetViewController: MainViewController {

    init() {
        super.init(resource: "betzet")
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
