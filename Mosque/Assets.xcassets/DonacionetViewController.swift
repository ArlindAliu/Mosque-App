//
//  DonacionetViewController.swift
//  Mosque
//
//  Created by Arlind Aliu on 10/23/18.
//  Copyright © 2018 Arlind Aliu. All rights reserved.
//

import UIKit

class DonacionetViewController: UIViewController {

    @IBOutlet weak var viewi1: GradientView!
    @IBOutlet weak var viewi2: GradientView!
    @IBOutlet weak var viewi3: GradientView!
    @IBOutlet weak var ggg: UILabel!
    @IBOutlet weak var label2: UILabel!
    @IBOutlet weak var label3: UILabel!
    @IBOutlet weak var label4: UILabel!
    @IBOutlet weak var konstrajn: NSLayoutConstraint!
    @IBOutlet weak var lblNumri: UILabel!
    @IBOutlet weak var lbl1shi: UILabel!
    @IBOutlet weak var lbl2shi: UILabel!
    @IBOutlet weak var spenden: UILabel!
    @IBOutlet weak var spenden2: UILabel!
    
    @IBOutlet weak var butoniwidth: NSLayoutConstraint!
    @IBOutlet weak var spenden3: UILabel!
    @IBOutlet weak var butoniHeight: NSLayoutConstraint!
    
    @IBOutlet weak var lbla: UILabel!
    
    @IBOutlet weak var lblblbl: UILabel!
    
    @IBOutlet weak var butoni: UIButton!
    let numri1 = "0900 10 20 10"
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        if self.view.frame.height == 568 {
//    ggg.font = UIFont.systemFont(ofSize: 11)
//            label2.font = UIFont.systemFont(ofSize: 11)
//            label3.font = UIFont.systemFont(ofSize: 11)
//            label4.font = UIFont.systemFont(ofSize: 11)
//            lblNumri.font = UIFont.systemFont(ofSize: 16)
//            lbl1shi.font = UIFont.systemFont(ofSize: 11)
//            lbl2shi.font = UIFont.systemFont(ofSize: 11)
//            spenden.font = UIFont.systemFont(ofSize: 16)
//            spenden2.font = UIFont.systemFont(ofSize: 16)
//            lbla.font = UIFont.systemFont(ofSize: 10)
//            lblblbl.font = UIFont.systemFont(ofSize: 10)
//            spenden3.font = UIFont.systemFont(ofSize: 15)
//
//            butoniwidth.constant  = 50
//            butoniHeight.constant = 17
//
//
//            konstrajn.constant = 2
//            self.view.layoutIfNeeded()
//        }
        viewi1.layer.cornerRadius = 15
        viewi2.layer.cornerRadius = 15
        viewi3.layer.cornerRadius = 15
        butoni.showsTouchWhenHighlighted = true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func backBtn(_ sender: Any) {
        
        self.dismiss(animated: true, completion: nil)
    }

    @IBAction func thirree(_ sender: Any) {
        numri1.makeAColl()
    }
}
