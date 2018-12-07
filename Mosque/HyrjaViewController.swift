//
//  HyrjaViewController.swift
//  Mosque
//
//  Created by Arlind Aliu on 10/21/18.
//  Copyright © 2018 Arlind Aliu. All rights reserved.
//

import UIKit

class HyrjaViewController: UIViewController {

    @IBOutlet weak var rrethButoni: UIButton!
    @IBOutlet weak var butoni1: UIButton!
    @IBOutlet weak var butoni2: UIButton!
    @IBOutlet weak var butoni3: UIButton!
    @IBOutlet weak var butoni4: UIButton!
    @IBOutlet weak var butoni5: UIButton!
    @IBOutlet weak var butoni6: UIButton!
    @IBOutlet weak var butoni7: UIButton!
    @IBOutlet weak var butoni8: UIButton!
    
    var bRec = true
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }

    @IBAction func butoni2(_ sender: Any) {
        
        
        bRec = !bRec
        if (bRec == true) {
            //rrethButoni.setImage(UIImage(named: "profile-1"), for: .normal)
            rrethButoni.setBackgroundImage(UIImage(named: "profile123"), for: .normal)
        } else {
            rrethButoni.setBackgroundImage(UIImage(named: "profile"), for: .highlighted)
           // rrethButoni.setImage(UIImage(named: "profile"), for: .highlighted)
        }
        
    }
    
    
    @IBAction func njoftimet2(_ sender: Any) {
        
        bRec = !bRec
        if (bRec == true) {
            butoni1.setBackgroundImage(UIImage(named: "Njoftimet1112"), for: .normal)
        } else {
           // butoni1.backgroundColor = UIColor(hexString: "#b7b16b")
            butoni1.setBackgroundImage(UIImage(named: "Njoftimet1231"), for: .highlighted)
        }
    }
    
    @IBAction func islamineWil1(_ sender: Any) {
        
        
        bRec = !bRec
        if (bRec == true) {
           // butoni2.setImage(UIImage(named: "mail-1"), for: .normal)
            butoni2.setBackgroundImage(UIImage(named: "IslamiInWill"), for: .normal)
        } else {
            //butoni2.setImage(UIImage(named: "mail"), for: .highlighted)
            butoni2.setBackgroundImage(UIImage(named: "IslamiInWillColor"), for: .highlighted)
        }
    }
    
    @IBAction func meeting1(_ sender: Any) {
        
        bRec = !bRec
        if (bRec == true) {
            //butoni3.setImage(UIImage(named: "photo-1"), for: .normal)
            butoni3.setBackgroundImage(UIImage(named: "photolindi"), for: .normal)
        } else {
           // butoni3.setImage(UIImage(named: "photo"), for: .highlighted)
            butoni3.setBackgroundImage(UIImage(named: "photolindiColor"), for: .highlighted)
        }
    }
    
    @IBAction func virtual(_ sender: Any) {
        
        
        bRec = !bRec
        if (bRec == true) {
           // butoni4.setImage(UIImage(named: "uploads"), for: .normal)
            butoni4.setBackgroundImage(UIImage(named: "uploads"), for: .normal)
        } else {
           // butoni4.setImage(UIImage(named: "uploads-1"), for: .highlighted)
            butoni4.setBackgroundImage(UIImage(named: "uploadsColor"), for: .highlighted)
        }
    }
    @IBAction func arkitektura1(_ sender: Any) {
        
        
        bRec = !bRec
        if (bRec == true) {
            //butoni5.setImage(UIImage(named: "favorites"), for: .normal)
            butoni5.setBackgroundImage(UIImage(named: "favorites"), for: .normal)
        } else {
            //butoni5.setImage(UIImage(named: "favorites-1"), for: .highlighted)
            butoni5.setBackgroundImage(UIImage(named: "favoritesColor"), for: .highlighted)
        }
    }
    
    @IBAction func donacionet1(_ sender: Any) {
        
        bRec = !bRec
        if (bRec == true) {
            //butoni6.setImage(UIImage(named: "statistic"), for: .normal)
            butoni6.setBackgroundImage(UIImage(named: "statistic"), for: .normal)
        } else {
           // butoni6.setImage(UIImage(named: "statistic-1"), for: .highlighted)
            butoni6.setBackgroundImage(UIImage(named: "statisticColor"), for: .highlighted)
        }
    }
    @IBAction func antarsia1(_ sender: Any) {
        
        bRec = !bRec
        if (bRec == true) {
            //butoni7.setImage(UIImage(named: "settings-1"), for: .normal)
            butoni7.setBackgroundImage(UIImage(named: "settings"), for: .normal)
        } else {
            //butoni7.setImage(UIImage(named: "settings-2"), for: .highlighted)
            butoni7.setBackgroundImage(UIImage(named: "settingsColor"), for: .highlighted)
        }
    }
    @IBAction func kontakti1(_ sender: Any) {
        
        bRec = !bRec
        if (bRec == true) {
           // butoni8.setImage(UIImage(named: "logout"), for: .normal)
            butoni8.setBackgroundImage(UIImage(named: "logout"), for: .normal)
        } else {
           // butoni8.setImage(UIImage(named: "logout-1"), for: .highlighted)
            butoni8.setBackgroundImage(UIImage(named: "logoutColor"), for: .highlighted)
        }
    }

    @IBAction func islami23(_ sender: Any) {
//        bRec = !bRec
//        if (bRec == true) {
//            butoni2.setImage(UIImage(named: "mail-1"), for: .normal)
//        } else {
//            butoni2.setImage(UIImage(named: "mail"), for: .selected)
//        }
    }
    @IBAction func njoftimet22(_ sender: Any) {
//        bRec = !bRec
//        if (bRec == true) {
//            butoni1.setImage(UIImage(named: "njoftimetClear"), for: .normal)
//        } else {
//            butoni1.setImage(UIImage(named: "friends"), for: .selected)
//        }
    }
    @IBAction func rrethButoni1(_ sender: Any) {
//        bRec = !bRec
//        if (bRec == true) {
//            rrethButoni.setImage(UIImage(named: "profile-1"), for: .normal)
//        } else {
//            rrethButoni.setImage(UIImage(named: "profile"), for: .selected)
//        }
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "rrethnesh" {
        
           _ = segue.destination as! RrethNeshViewController
        } else if segue.identifier == "njoftimet"{
        
            _ = segue.destination as! NjoftimetViewController
        } else if segue.identifier == "islami" {
            _ = segue.destination as! IslamiViewController
        }else if segue.identifier == "meetings" {
            _ = segue.destination as! MeetingsViewController
            
        }else if segue.identifier == "antarsia" {
            _ = segue.destination as! AntarsiaPageViewController

        }else if segue.identifier == "copyright" {
            _ = segue.destination as! InfoViewController
            
        }else if segue.identifier == "kontakti" {
            _ = segue.destination as! KontaktiViewController
            
        }

}
}
