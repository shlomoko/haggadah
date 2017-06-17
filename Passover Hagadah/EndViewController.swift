//
//  EndViewController.swift
//  Passover Hagadah
//
//  Created by Shana on 14/06/2017.
//  Copyright © 2017 Shana. All rights reserved.
//

import UIKit

class EndViewController: UIViewController {

    @IBOutlet weak var backgroundImage: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        backgroundImage.image = UIImage(named: "15end.jpg")
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
