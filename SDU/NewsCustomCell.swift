//
//  NewsCustomCell.swift
//  SDU
//
//  Created by Бекболат Куанышев on 29.03.17.
//  Copyright © 2017 Bekbolat. All rights reserved.
//

import UIKit

class NewsCustomCell: UITableViewCell {

    @IBOutlet weak var newsImage: UIImageView!
    @IBOutlet weak var newsTextView: UITextView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
