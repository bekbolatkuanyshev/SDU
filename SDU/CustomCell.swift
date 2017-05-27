//
//  CustomCell.swift
//  SDU
//
//  Created by Бекболат Куанышев on 27.03.17.
//  Copyright © 2017 Bekbolat. All rights reserved.
//

import Foundation
import UIKit

class CustomCell : UITableViewCell {
    
    @IBOutlet weak var clubsLabel: UILabel!
    
    @IBOutlet weak var clubsImage: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        clubsImage.layer.cornerRadius = 20;
        clubsImage.clipsToBounds = true;
        clubsImage.backgroundColor = UIColor.clear
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
}
