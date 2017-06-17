//
//  plagueTableViewCell.swift
//  Passover Hagadah
//
//  Created by Shana on 13/06/2017.
//  Copyright © 2017 Shana. All rights reserved.
//

import UIKit

class plagueTableViewCell: UITableViewCell {

    @IBOutlet weak var plagueImage: UIImageView!
    @IBOutlet weak var closedImage: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
