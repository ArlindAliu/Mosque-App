//
//  SelectedNewsViewController.swift
//  Mosque
//
//  Created by Arlind Aliu on 10/26/18.
//  Copyright © 2018 Arlind Aliu. All rights reserved.
//

import UIKit
import Alamofire
import AlamofireImage
import SwiftyJSON

class SelectedNewsViewController: UIViewController {

    @IBOutlet weak var viewi: UIView!
    @IBOutlet weak var lblTeksti: UILabel!
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var fotoja: UIImageView!
    @IBOutlet weak var lblTitulli: UILabel!
    var obj: NjoftimetModel?
    let APIURL = "http://1.lagjaledina.com/wp-json/wp/v2/media/"
    
    @IBOutlet weak var butoni: UIButton!
    
    var id : Int = 0
    var kiki : String = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        
        lblTeksti.text = obj?.contenti.withoutHtml
        id = (obj?.fotoja)!
        lblTitulli.text = obj?.titulli
        setFoto()
        print(obj!.contenti)
        butoni.showsTouchWhenHighlighted = true
       // viewi.layer.cornerRadius = viewi.frame.width/2
        //viewi.clipsToBounds = true
    }
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
    //    scrollView.contentSize = CGSize(width: lblTeksti.frame.width, height: lblTeksti.frame.height)
    }
    @IBAction func backBtn(_ sender: Any) {
        
        self.dismiss(animated: true, completion: nil)
    }
    
    func setFoto(){
        
        Alamofire.request("\(self.APIURL)\(id)").responseData (completionHandler: { (data) in
            
            if data.result.isSuccess{
                
                let coinJSON2 = JSON(data.result.value!)
                //print(coinJSON2)
                self.kiki = coinJSON2["guid"]["rendered"].stringValue
                
                Alamofire.request(self.kiki).responseImage(completionHandler: { (response) in
                    self.fotoja.image = response.result.value
                    
                    if self.fotoja.image == nil {
                        self.fotoja.image = UIImage(named: "Single")
                    }
                })
                //self.fotoja.af_setImage(withURL: URL(string: self.kiki)!)
                //self.tableView.reloadData()
                //print(self.kiki)
                //DispatchQueue.async(<#T##DispatchQueue#>)
            }
        })
        
        
    }

    
}
