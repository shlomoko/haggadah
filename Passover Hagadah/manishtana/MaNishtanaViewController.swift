//
//  MaNishtanaViewController.swift
//  Passover Hagadah
//
//  Created by Shana on 16/06/2017.
//  Copyright © 2017 Shana. All rights reserved.
//

import UIKit

class MaNishtanaViewController: UIViewController {

    @IBOutlet weak var backgroundImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func showHebrew(_ sender: UIButton) {
        backgroundImage.image = UIImage(named: "manishtana_hebrew.jpg")
    }
    @IBAction func showEnglish(_ sender: Any) {
        backgroundImage.image = UIImage(named: "manishtana_english.jpg")
    }
    @IBAction func showYiddish(_ sender: Any) {
        backgroundImage.image = UIImage(named: "manishtana_yiddish.jpg")
    }
    @IBAction func showFrench(_ sender: UIButton) {
        backgroundImage.image = UIImage(named: "manishtana_french.jpg")
    }
    
    @IBAction func showSpanish(_ sender: UIButton) {
        backgroundImage.image = UIImage(named: "manishtana_spanish.jpg")
        
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
