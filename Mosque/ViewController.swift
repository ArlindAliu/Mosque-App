//
//  ViewController.swift
//  Mosque
//
//  Created by Arlind Aliu on 10/21/18.
//  Copyright © 2018 Arlind Aliu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var butoni1: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        butoni1.layer.cornerRadius = butoni1.bounds.height/2
        //butoni1.imageEdgeInsets = UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 10)
     //   butoni1.imageRect(forContentRect: CGRect(x: 0, y: 0, width: 20, height: 20))
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func eksploro(_ sender: Any) {
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "eksploro"{
        segue.destination 
        }
    }
}

