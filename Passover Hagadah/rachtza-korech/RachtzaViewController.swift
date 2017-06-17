//
//  RachtzaViewController.swift
//  Passover Hagadah
//
//  Created by Shana on 14/06/2017.
//  Copyright © 2017 Shana. All rights reserved.
//

import UIKit

class RachtzaViewController: MainViewController {
    
    init() {
        super.init(resource: "6-9")
    }
    
    required convenience init?(coder aDecoder: NSCoder) {
        self.init()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
