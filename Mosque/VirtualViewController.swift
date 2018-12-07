//
//  VirtualViewController.swift
//  Mosque
//
//  Created by Arlind Aliu on 10/22/18.
//  Copyright © 2018 Arlind Aliu. All rights reserved.
//

import UIKit
import WebKit

class VirtualViewController: UIViewController {

    @IBOutlet weak var webView: UIWebView!
    @IBOutlet weak var upBarView: UIView!
    @IBOutlet weak var butoniiii: UIButton!
    
    @IBOutlet weak var konsti2: NSLayoutConstraint!
    @IBOutlet weak var konsti: NSLayoutConstraint!
    @IBOutlet weak var kontrejnti1shi: NSLayoutConstraint!
    @IBOutlet weak var butoni: UIButton!
    let url = URL(string: "http://1.lagjaledina.com/wp-content/EG1.html")
    
    let url1 = URL(string: "http://1.lagjaledina.com/Moschee.html")
    override func viewDidLoad() {
        super.viewDidLoad()
        if self.view.frame.height == 568 {
            
            butoniiii.titleEdgeInsets = UIEdgeInsets(top: 80, left: 0, bottom: 0, right:  40)
            butoniiii.imageEdgeInsets = UIEdgeInsets(top: 40, left: 140, bottom: 100, right: 136)
        }
        butoni.showsTouchWhenHighlighted = true
        
        let urlRequest = URLRequest(url: url!)
        webView.loadRequest(urlRequest)
        konsti.constant = -20
        konsti2.constant = -20
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func backBtn(_ sender: Any) {
        
        self.dismiss(animated: true, completion: nil)
    }
    override func performSegue(withIdentifier identifier: String, sender: Any?) {
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "floor1" {
        let cc = segue.destination as! VirtualFloorViewController
            cc.stringu = url
        } else if segue.identifier == "floor2"{
            let ff = segue.destination as! VirtualFloorViewController
            ff.stringu = url1 
        }
    }
   
    @IBAction func floor1(_ sender: Any) {
    }
    @IBAction func floorDy(_ sender: Any) {
    }
    
}
