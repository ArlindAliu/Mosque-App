//
//  InfoViewController.swift
//  Mosque
//
//  Created by Arlind Aliu on 10/27/18.
//  Copyright © 2018 Arlind Aliu. All rights reserved.
//

import UIKit
import SafariServices

class InfoViewController: UIViewController {

    @IBOutlet weak var lblb: UILabel!
    @IBOutlet weak var gg: UILabel!
    @IBOutlet weak var xxx: UILabel!
    @IBOutlet weak var butoni: UIButton!
    @IBOutlet weak var webagenc: UILabel!
    @IBOutlet weak var email: UILabel!
    @IBOutlet weak var fotoHeight: NSLayoutConstraint!
    @IBOutlet weak var copyright: UILabel!
    @IBOutlet weak var prishtin: UILabel!
   @IBOutlet weak var rrotoHeight: NSLayoutConstraint!
    @IBOutlet weak var gmail: UILabel!
    @IBOutlet weak var RRokullia: UILabel!
    @IBOutlet weak var islamiHeight: NSLayoutConstraint!
    @IBOutlet weak var webdeve: UILabel!
    @IBOutlet weak var design: UILabel!
    @IBOutlet weak var Rrotowidth: NSLayoutConstraint!
    @IBOutlet weak var tele: UIButton!
    
    @IBOutlet weak var Telebingo: UIButton!
    @IBOutlet weak var konstejt: NSLayoutConstraint!
    @IBOutlet weak var opop: UIButton!
    let numri1 = "0719115959"
    let numri2 = "0621641499"
    let numri3 = "049802206"
    override func viewDidLoad() {
        super.viewDidLoad()
        
        butoni.showsTouchWhenHighlighted = true
        
        if self.view.frame.height == 568 {
            
            gg.font = UIFont(name: "Lato-Semibold", size: 9.7)
           tele.titleLabel?.font = UIFont(name: "Lato-Regular", size: 9.7)
            Telebingo.titleLabel?.font = UIFont(name: "Lato-Regular", size: 9.7)
            opop.titleLabel?.font = UIFont(name: "Lato-Regular", size: 9.7)
            lblb.font = UIFont(name: "TradeGothicLT-Bold", size: 30)
            
            xxx.font = UIFont(name: "Lato-Regular", size: 9.7)
            
            webdeve.font = UIFont(name: "Lato-Italic", size: 12)
            
            webagenc.font = UIFont(name: "Lato-Semibold", size: 9.7)
            
            email.font = UIFont(name: "Lato-Regular", size: 9.7)
            
            copyright.font = UIFont(name: "Lato-Semibold", size: 16)
            prishtin.font = UIFont(name: "Lato-Regular", size: 9.7)
            
            gmail.font = UIFont(name: "Lato-Regular", size: 9.7)
            
            design.font = UIFont(name: "Lato-Semibold", size: 16)
           
            islamiHeight.constant = 62
            
            rrotoHeight.constant = 55
            Rrotowidth.constant = 55
            konstejt.constant = 15
                
            self.view.layoutIfNeeded()
        }
        
        // Do any additional setup after loading the view.
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func backBtn(_ sender: Any) {
    
    
    self.dismiss(animated: true, completion: nil)
    }
    @IBAction func makephone(_ sender: Any) {
        let alert = UIAlertController(title: "", message: "Call this number?", preferredStyle: .alert)
        
        // add an action (button)
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: { (data) in
            self.numri1.makeAColl()
        }))
        alert.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: nil))
        
        // show the alert
        self.present(alert, animated: true, completion: nil)
        //numri1.makeAColl()
    }
    
    @IBAction func rrokulliaLink(_ sender: Any) {
        let vc = SFSafariViewController(url: URL(string: "https://www.rrokullia.link")!)
        present(vc, animated: true, completion: nil)
    }
    
    @IBAction func imellaa(_ sender: Any) {
        let alert = UIAlertController(title: "", message: "Write an email to us?", preferredStyle: .alert)
        
        // add an action (button)
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: { (data) in
            let email = "info@moschee-wil.ch"
            if let url = NSURL(string: "mailto:\(email)") {
                UIApplication.shared.open(url as URL, options: [:], completionHandler: nil)
            }
        }))
        alert.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: nil))
        
        // show the alert
        self.present(alert, animated: true, completion: nil)
        
    }
    
    @IBAction func callthis(_ sender: Any) {
        let alert = UIAlertController(title: "", message: "Call this number?", preferredStyle: .alert)
        
        // add an action (button)
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: { (data) in
            self.numri2.makeAColl()
        }))
        alert.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: nil))
        
        // show the alert
        self.present(alert, animated: true, completion: nil)
        //numri1.makeAColl()
    }
    @IBAction func callthat(_ sender: Any) {
        let alert = UIAlertController(title: "", message: "Call this number?", preferredStyle: .alert)
        
        // add an action (button)
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: { (data) in
            self.numri3.makeAColl()
        }))
        alert.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: nil))
        
        // show the alert
        self.present(alert, animated: true, completion: nil)
        //numri1.makeAColl()
    }
    @IBAction func imella2(_ sender: Any) {
        let alert = UIAlertController(title: "", message: "Write an email to us?", preferredStyle: .alert)
        
        // add an action (button)
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: { (data) in
            let email = "rrokullia@gmail.com"
            if let url = NSURL(string: "mailto:\(email)") {
                UIApplication.shared.open(url as URL, options: [:], completionHandler: nil)
            }
        }))
        alert.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: nil))
        
        // show the alert
        self.present(alert, animated: true, completion: nil)
        
    
    }
}


