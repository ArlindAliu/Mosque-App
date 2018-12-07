//
//  KontaktiViewController.swift
//  Mosque
//
//  Created by Arlind Aliu on 10/28/18.
//  Copyright © 2018 Arlind Aliu. All rights reserved.
//

import UIKit
import SafariServices
class KontaktiViewController: UIViewController {

    @IBOutlet weak var viewi1: GradientView!
    @IBOutlet weak var viewi2: GradientView!
    @IBOutlet weak var butoni: UIButton!
    let numri1 = "0719115959"
    let numri2 = "079 544 39 83"
    let numri3 = "079 550 05 55"
    override func viewDidLoad() {
        super.viewDidLoad()

        viewi1.layer.cornerRadius = 15
        //viewi2.layer.cornerRadius = 15
        butoni.showsTouchWhenHighlighted = true
    }
    @IBAction func instaConnect(_ sender: Any) {
//        let vc = SFSafariViewController(url: URL(string: "https://www.instagram.com/xhamiawil/?utm_source=ig_profile_share&igshid=clo80keg0kle")!)
//        present(vc, animated: true, completion: nil)
        openInstagram(instagramHandle: "xhamiawil?utm_source=ig_profile_share&igshid=clo80keg0kle")
    }
    func openInstagram(instagramHandle: String) {
        guard let url = URL(string: "https://instagram.com/\(instagramHandle)")  else { return }
        if UIApplication.shared.canOpenURL(url) {
            if #available(iOS 10.0, *) {
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            } else {
                UIApplication.shared.openURL(url)
            }
        }
    }
    func openFacebook(instagramHandle: String) {
        guard let url = URL(string: "https://facebook.com/\(instagramHandle)")  else { return }
        if UIApplication.shared.canOpenURL(url) {
            if #available(iOS 10.0, *) {
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            } else {
                UIApplication.shared.openURL(url)
            }
        }
    }
    
    @IBAction func fbconnect(_ sender: Any) {
//        let svc = SFSafariViewController(url: URL(string: "https://www.facebook.com/XhamiaWil")!)
//        present(svc, animated: true, completion: nil)
        //UIApplication.tryURL(urls: ["https://www.facebook.com/XhamiaWil","www.google.com"])
        UIApplication.shared.open(URL(string: "fb://pg/XhamiaWil/about/?ref=page_internal")!, options: [:], completionHandler: nil)
        UIApplication.tryURL(urls: ["fb://profile/XhamiaWil/","https://www.facebook.com/XhamiaWil"])
        //openFacebook(instagramHandle: "/XhamiaWil/")
    }
    
    @IBAction func backBtn(_ sender: Any) {
        
        self.dismiss(animated: true, completion: nil)
    }

    @IBAction func numri1Call(_ sender: Any) {
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
    
    @IBAction func numri2Call(_ sender: Any) {
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
    
    @IBAction func numri3Call(_ sender: Any) {
        
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
    
    @IBAction func llamellaa(_ sender: Any) {
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
}
extension UIApplication {
    class func tryURL(urls: [String]) {
        let application = UIApplication.shared
        for url in urls {
            if application.canOpenURL(URL(string: url)!) {
                application.open((URL(string: url)!), options: [:], completionHandler: nil)
                return
            }
        }
    }
}
