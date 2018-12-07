//
//  NjoftimetTableViewCell.swift
//  Mosque
//
//  Created by Arlind Aliu on 10/21/18.
//  Copyright © 2018 Arlind Aliu. All rights reserved.
//

import UIKit
import Alamofire
import AlamofireImage
import SwiftyJSON

class NjoftimetTableViewCell: UITableViewCell {

    @IBOutlet weak var fotoja: UIImageView!
    @IBOutlet weak var lblTeksti: UILabel!
    @IBOutlet weak var viewi: UIView!
    let APIURL = "http://1.lagjaledina.com/wp-json/wp/v2/media/"
    var kiki: String? = ""
    var cc : Void!
    //let imigji : CustomImageView = CustomImageView.loadImageUsingUrlString(<#T##CustomImageView#>)
    let downloader = ImageDownloader()
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        //viewi.layer.cornerRadius = viewi.frame.width/2
          //  viewi.clipsToBounds = true
       
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
   
    func setFoto(featured: Int){
//  print(featured)
//        if featured == 0 {
//            self.fotoja.image = UIImage(named: "Single")
//        }else {
        Alamofire.request("\(self.APIURL)\(featured)").responseData (completionHandler: { (data) in

            if data.result.isSuccess{

                let coinJSON2 = JSON(data.result.value as Any)
                //print(coinJSON2)
                self.kiki = coinJSON2["guid"]["rendered"].stringValue
//                if self.kiki == nil {
//                     self.fotoja.image = UIImage(named: "Single")
//                } else {
//                    self.fotoja.af_setImage(withURL: URL(string: self.kiki!)!)
//                }
//
//
//                let urlRequest = URLRequest(url: URL(string: self.kiki)!)
//
//                self.downloader.download(urlRequest) { response in
//
//                    if let image = response.result.value{
//                        
//                        self.fotoja.image = image
//                    } else {
//                        
//                        self.fotoja.image = UIImage(named: "Single")
//                    }
//                }
                
                Alamofire.request(self.kiki!).responseImage(completionHandler: { (response) in
                    self.fotoja.image = response.result.value

                    if self.fotoja.image == nil {
                        self.fotoja.image = UIImage(named: "Single")
                    }
                })
                //if self.kiki != nil{
                
//                }else {
//                    self.fotoja.image = UIImage(named: "Single")
//                }
               // self.fotoja.af_setImage(withURL: URL(string: self.kiki)!, placeholderImage: nil, filter: nil, progress: nil, progressQueue: nil, imageTransition: .crossDissolve(0.5), runImageTransitionIfCached: false, completion: { (response) in
    
    
//                })
//
                
//            }
////
//
    }
            })
    }

    
    
}

