//
//  ButtonExtension.swift
//  Mosque
//
//  Created by PlusComputers on 11/16/18.
//  Copyright © 2018 Arlind Aliu. All rights reserved.
//

import UIKit

extension UIButton {
    func selectedButton(title:String, iconName: String, widthConstraints: NSLayoutConstraint){
        
        self.backgroundColor = UIColor(red: 0, green: 118/255, blue: 254/255, alpha: 1)
        self.setTitle(title, for: .normal)
        self.setTitle(title, for: .highlighted)
        self.setTitleColor(UIColor.white, for: .normal)
        self.setTitleColor(UIColor.white, for: .highlighted)
        self.setImage(UIImage(named: iconName), for: .normal)
        self.setImage(UIImage(named: iconName), for: .highlighted)
        let imageWidth = self.imageView!.frame.width
        let textWidth = (title as NSString).size(withAttributes:[kCTFontAttributeName as NSAttributedStringKey:self.titleLabel!.font!]).width
        let width = textWidth + imageWidth + 24
        widthConstraints.constant = width
        self.layoutIfNeeded()
    }
}
