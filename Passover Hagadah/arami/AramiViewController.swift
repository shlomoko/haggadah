//
//  AramiViewController.swift
//  Passover Hagadah
//
//  Created by Shana on 13/06/2017.
//  Copyright © 2017 Shana. All rights reserved.
//

import UIKit

class AramiViewController: MainViewController {

    
    init() {
        super.init(resource: "arami")
    }
    
    required convenience init?(coder aDecoder: NSCoder) {
        self.init()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let tap = UITapGestureRecognizer(target: self, action: #selector(doubleTapped))
        tap.delegate = self
        tap.numberOfTapsRequired = 2
        webView.scrollView.addGestureRecognizer(tap)
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
