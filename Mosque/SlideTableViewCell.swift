//
//  SlideTableViewCell.swift
//  Mosque
//
//  Created by Arlind Aliu on 10/24/18.
//  Copyright © 2018 Arlind Aliu. All rights reserved.
//

import UIKit

class SlideTableViewCell: UITableViewCell {

    @IBOutlet weak var fotoja: UIImageView!
    
    @IBOutlet weak var lblEmri: UILabel!
    
    @IBOutlet weak var lblPozita: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
