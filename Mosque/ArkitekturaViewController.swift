//
//  ArkitekturaViewController.swift
//  Mosque
//
//  Created by Arlind Aliu on 10/23/18.
//  Copyright © 2018 Arlind Aliu. All rights reserved.
//

import UIKit

class ArkitekturaViewController: UIViewController , UIScrollViewDelegate{

    @IBOutlet weak var stekView: UIStackView!
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var viewi: UIView!
    @IBOutlet weak var butoni: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()

        scrollView.delegate = self
        butoni.showsTouchWhenHighlighted = true
        scrollView.contentSize = CGSize(width: viewi.frame.width, height: viewi.frame.height)
        scrollView.isPagingEnabled = true
    }

  

    @IBAction func backBtn(_ sender: Any) {
        
        self.dismiss(animated: true, completion: nil)
    }
}
