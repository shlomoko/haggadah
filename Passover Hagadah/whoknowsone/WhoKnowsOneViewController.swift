//
//  WhoKnowsOneViewController.swift
//  Passover Hagadah
//
//  Created by Shana on 14/06/2017.
//  Copyright © 2017 Shana. All rights reserved.
//

import UIKit

class WhoKnowsOneViewController: UIViewController {

    @IBOutlet weak var backgroundImage: UIImageView!
    @IBOutlet weak var stackview: UIStackView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        backgroundImage.image = UIImage(named: "whoknows1.jpg")
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func pressedButton(_ sender: UIButton) {
        backgroundImage.image = UIImage(named: "whoknows\(String(describing: (13 - buttons.index(of: sender)!))).jpg")
    }


    @IBOutlet var buttons: [UIButton]!
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
