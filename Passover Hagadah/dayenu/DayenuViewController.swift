//
//  DayenuViewController.swift
//  Passover Hagadah
//
//  Created by Shana on 19/06/2017.
//  Copyright © 2017 Shana. All rights reserved.
//

import UIKit

class DayenuViewController: UIViewController, UIScrollViewDelegate {


    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var dayenu1: UIImageView!
    @IBOutlet weak var dayenu2: UIImageView!
    @IBOutlet weak var dayenu3: UIImageView!
    @IBOutlet weak var dayenu4: UIImageView!
    @IBOutlet weak var dayenu5: UIImageView!
    @IBOutlet weak var dayenu6: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        scrollView.delegate = self
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    var previous : CGFloat = 0
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        let factor : CGFloat = 0.15
        let delta: CGFloat = 0.15
        dayenu2.frame.origin.y -= (scrollView.contentOffset.y - previous) * factor
        dayenu3.frame.origin.y -= (scrollView.contentOffset.y - previous) * (factor + delta)
        dayenu4.frame.origin.y -= (scrollView.contentOffset.y - previous) * (factor + delta * 2)
        dayenu5.frame.origin.y -= (scrollView.contentOffset.y - previous) * (factor + delta * 3)
        dayenu6.frame.origin.y -= (scrollView.contentOffset.y - previous) * (factor + delta * 4)

        previous = scrollView.contentOffset.y
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
