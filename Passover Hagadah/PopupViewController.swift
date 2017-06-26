//
//  PopupViewController.swift
//  Passover Hagadah
//
//  Created by Shana on 18/06/2017.
//  Copyright © 2017 Shana. All rights reserved.
//

import UIKit

class PopupViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let tap = UITapGestureRecognizer(target: self, action: #selector(didTap))
        view.addGestureRecognizer(tap)
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func didTap () {
        self.dismiss(animated: true, completion: nil)
    }
    
    
    @IBAction func carpas(_ sender: UIButton) {
        NotificationCenter.default.post(name: Notification.Name("menuNotification"), object: 15)
    }
    
    @IBAction func corech(_ sender: Any) {
        NotificationCenter.default.post(name: Notification.Name("menuNotification"), object: 8)    }
    @IBAction func maror(_ sender: Any) {
        NotificationCenter.default.post(name: Notification.Name("menuNotification"), object: 8)    }
    @IBAction func motzy(_ sender: Any) {
        NotificationCenter.default.post(name: Notification.Name("menuNotification"), object: 8)    }
    @IBAction func rachtza(_ sender: Any) {
        NotificationCenter.default.post(name: Notification.Name("menuNotification"), object: 8)
    }
    @IBAction func kadesh(_ sender: Any) {
        NotificationCenter.default.post(name: Notification.Name("menuNotification"), object: 17)
    }
    
    @IBAction func nirtzah(_ sender: Any) {
        NotificationCenter.default.post(name: Notification.Name("menuNotification"), object: 3)
    }
    @IBAction func halel(_ sender: Any) {
        NotificationCenter.default.post(name: Notification.Name("menuNotification"), object: 4)
    }
    @IBAction func barech(_ sender: Any) {
        NotificationCenter.default.post(name: Notification.Name("menuNotification"), object: 5)
    }
    @IBAction func tzafun(_ sender: Any) {
        NotificationCenter.default.post(name: Notification.Name("menuNotification"), object: 6)
    }
    @IBAction func shulchan(_ sender: Any) {
        NotificationCenter.default.post(name: Notification.Name("menuNotification"), object: 7)
    }
    @IBAction func magid(_ sender: Any) {
        NotificationCenter.default.post(name: Notification.Name("menuNotification"), object: 13)
    }
    @IBAction func yachatz(_ sender: Any) {
        NotificationCenter.default.post(name: Notification.Name("menuNotification"), object: 14)
    }
    @IBAction func urchatz(_ sender: UIButton) {
        NotificationCenter.default.post(name: Notification.Name("menuNotification"), object: 16)
    }
    
    func screenDoesNotExist(sender : Any) {
        let alert = UIAlertController(title: "איזה באסה!", message:"המסך הזה עוד לא קיים", preferredStyle: .actionSheet)
        alert.addAction(UIAlertAction(title: "בסדר..", style: .default) { action in
        })
        if let popoverController = alert.popoverPresentationController {
            popoverController.sourceView = sender as? UIView
            popoverController.sourceRect = (sender as AnyObject).bounds
        }
        self.present(alert, animated: true, completion: nil)
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
