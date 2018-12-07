//
//  IslamiViewController.swift
//  Mosque
//
//  Created by Arlind Aliu on 10/22/18.
//  Copyright © 2018 Arlind Aliu. All rights reserved.
//

import UIKit

class IslamiViewController: UIViewController {

    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var lblTeksti: UILabel!
    @IBOutlet weak var butoni: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        //scrollView.layoutMarginsGuide.bottomAnchor.constraint(equalTo: lblTeksti.bottomAnchor).isActive = true
        butoni.showsTouchWhenHighlighted = true
    }

    @IBAction func backBtn(_ sender: Any) {
        
        self.dismiss(animated: true, completion: nil)
        
        
       if butoni.isSelected == true {
            
            butoni.backgroundColor = UIColor.lightGray
        
        }
        
    }
    
}
