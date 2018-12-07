//
//  AntarsiaTableViewCell.swift
//  Mosque
//
//  Created by Arlind Aliu on 10/26/18.
//  Copyright © 2018 Arlind Aliu. All rights reserved.
//

import UIKit

class AntarsiaTableViewCell: UITableViewCell {

    @IBOutlet weak var fotoja: UIImageView!
    
    @IBOutlet weak var emri: UILabel!
    
    @IBOutlet weak var pozita: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        fotoja.layer.borderWidth = 1
        fotoja.layer.masksToBounds = false
        fotoja.layer.borderColor = UIColor.white.cgColor
        fotoja.layer.cornerRadius = fotoja.frame.height/2
        fotoja.clipsToBounds = true

    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
