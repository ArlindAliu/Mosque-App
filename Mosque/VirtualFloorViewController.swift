//
//  VirtualFloorViewController.swift
//  Mosque
//
//  Created by PlusComputers on 11/20/18.
//  Copyright © 2018 Arlind Aliu. All rights reserved.
//

import UIKit
import WebKit

class VirtualFloorViewController: UIViewController {
    @IBOutlet weak var webView: UIWebView!
    
    @IBOutlet weak var butoni1: UIButton!
    @IBOutlet weak var konsit: NSLayoutConstraint!
    var stringu : URL?
    override func viewDidLoad() {
        super.viewDidLoad()

        let urlRequest = URLRequest(url: stringu!)
        webView.loadRequest(urlRequest)
        konsit.constant = -20
        butoni1.showsTouchWhenHighlighted = true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func backBtn(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
}
