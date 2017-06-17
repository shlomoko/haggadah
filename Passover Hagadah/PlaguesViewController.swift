//
//  PlaguesTableViewController.swift
//  Passover Hagadah
//
//  Created by Shana on 13/06/2017.
//  Copyright © 2017 Shana. All rights reserved.
//

import UIKit
import SwiftyGif

class PlaguesViewController: UITableViewController {
    var selectedCell : IndexPath?
    var previousCell : IndexPath?
    let plagues = ["1blood","2frogs","3lice","4arov","5dever","6boils","7hail","8locusts","9dark","10bchorot"]
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //        tableView.rowHeight = UITableViewAutomaticDimension
        //        tableView.estimatedRowHeight = 150
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 10
    }
    
    let gifmanager = SwiftyGifManager(memoryLimit:50)
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "plagueCell", for: indexPath) as! plagueTableViewCell
        cell.plagueImage.setGifImage(UIImage(gifName: "\(plagues[indexPath.row]).gif"), manager: gifmanager)
        cell.closedImage.image = UIImage(named: "\(plagues[indexPath.row]).jpg")
        if indexPath != selectedCell {
            cell.plagueImage.isHidden = true
            cell.closedImage.isHidden = false
        } else {
            cell.plagueImage.isHidden = false
            cell.closedImage.isHidden = true
        }
        return cell
    }
    
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if selectedCell == indexPath {
            selectedCell = nil
        } else {
            
            previousCell = selectedCell
            selectedCell = indexPath
        }
        tableView.reloadData()
        
        tableView.beginUpdates()
        tableView.endUpdates()
        

        
        
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath == selectedCell {
            return 350
        }
        return 175
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
