//
//  RrethNeshViewController.swift
//  Mosque
//
//  Created by Arlind Aliu on 10/21/18.
//  Copyright © 2018 Arlind Aliu. All rights reserved.
//

import UIKit

class RrethNeshViewController: UIViewController {

    @IBOutlet weak var butoni: UIButton!
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var lblTeksti: UILabel!
    @IBOutlet weak var viewi: UIView!
   
    override func viewDidLoad() {
        super.viewDidLoad()
        butoni.showsTouchWhenHighlighted = true
        butoni.titleEdgeInsets = UIEdgeInsets(top: 8, left: 8, bottom: 8, right: 8)

        scrollView.contentSize = CGSize(width: lblTeksti.frame.width, height: lblTeksti.frame.height)
       // scrollView.layoutMarginsGuide.bottomAnchor.constraint(equalTo: lblTeksti.bottomAnchor).isActive = true
        
    }

    @IBAction func backbtn(_ sender: Any) {
    

        self.dismiss(animated: true, completion: nil)
    }

   

}
