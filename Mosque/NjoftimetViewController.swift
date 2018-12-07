//
//  NjoftimetViewController.swift
//  Mosque
//
//  Created by Arlind Aliu on 10/21/18.
//  Copyright © 2018 Arlind Aliu. All rights reserved.
//

import UIKit
import Alamofire
import SwiftyJSON
import AlamofireImage



class NjoftimetViewController: UIViewController , UITableViewDataSource, UITableViewDelegate {

    
    var vargu : [NjoftimetModel] = [NjoftimetModel]()
   
    let ApiUrl = "http://1.lagjaledina.com/wp-json/wp/v2/posts?fbclid=IwAR3JzbqENyI17Dq0q7rw5k1Xvm9JAgheElejlkw39F7h42YtMX8xSXfif64"
    let APIURL = "http://1.lagjaledina.com/wp-json/wp/v2/media/"
    var fifi : Int = 0
    var titi: String = ""
    var ciu : String = ""
    var kiki: String = ""
    var i = 0
    var imazhet : [String] = [String]()
    var error : URLError?
    let downloader = ImageDownloader()
    var image : UIImage?
    let ciuciu = UIImageViewAsync()
//    var titujt : [String] = []
//    var fotot: [String] = []
//    var contetat : [String] = []
    let imigji = CustomImageView()
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var fotot: UIImageView!
    
    @IBOutlet weak var butoni: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource = self
        tableView.delegate = self
        
        getDataFromAPI()
        butoni.showsTouchWhenHighlighted = true
        
        if let err = error , err.code  == URLError.Code.notConnectedToInternet
        {
            // create the alert
            let alert = UIAlertController(title: "No internet connection", message: "Please check your internet connection.", preferredStyle: .alert)
            
            // add an action (button)
            alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
            
            // show the alert
            self.present(alert, animated: true, completion: nil)
            
        }
        
    
    }
    struct Connectivity {
        static let sharedInstance = NetworkReachabilityManager()!
        static var isConnectedToInternet:Bool {
            return self.sharedInstance.isReachable
        }
    }
    
    func getDataFromAPI(){
    
        Alamofire.request(ApiUrl).responseData (completionHandler: { (data) in
            
            if data.result.isSuccess{
                
                
                 let coinJSON = JSON(data.result.value!)
                
                 for(_,value):(String,JSON) in coinJSON{
            
                    self.titi = value["title"]["rendered"].stringValue
                    self.fifi = value["featured_media"].intValue
                    self.ciu = value["content"]["rendered"].stringValue
                    
                    let c = NjoftimetModel.init(titulli:  self.Regular12(string: self.titi), fotoja: self.fifi, contenti:  self.Regular(string: self.ciu))
                    
                    self.vargu.append(c)
                    
                    }
                self.tableView.reloadData()
              
            }
    
        })
        self.tableView.reloadData()
        }
    
    func setFoto(featured: Int){
        
        Alamofire.request("\(self.APIURL)\(featured)").responseData (completionHandler: { (data) in
            
            if data.result.isSuccess{
                
                let coinJSON2 = JSON(data.result.value!)
                //print(coinJSON2)
                self.kiki = coinJSON2["guid"]["rendered"].stringValue
                
                }
            }
        )}
 
    
    @IBAction func backBtn(_ sender: Any) {
        
        self.dismiss(animated: true, completion: nil)
    }

    func Regular(string: String) -> String{

        let regex = try! NSRegularExpression(pattern: "\\[\\/?vc_[^\\]]*\\]", options: .caseInsensitive)
        let range = NSMakeRange(0, self.ciu.count)
        //regex.replaceMatches(in: self.ciu as! NSMutableString, options: [], range: range, withTemplate: "")
        return regex.stringByReplacingMatches(in: self.ciu, options: [], range: range, withTemplate: "")
    }

    func Regular12(string: String) -> String{

        let regex = try! NSRegularExpression(pattern: "&#8211;", options: .caseInsensitive)
        let range = NSMakeRange(0, self.titi.count)
        //regex.replaceMatches(in: self.ciu as! NSMutableString, options: [], range: range, withTemplate: "")
        return regex.stringByReplacingMatches(in: self.titi, options: [], range: range, withTemplate: "")
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "celli") as! NjoftimetTableViewCell
        
       //cell.fotoja.af_setImage(withURL: (URL(string:imazhet[indexPath.row]) ?? nil)!)
        //ciuciu.downloadImage(url: self.kiki)
         
        cell.fotoja.image = nil
        cell.setFoto(featured: vargu[indexPath.row].fotoja)
        
        cell.tag = indexPath.row
       
       
        cell.lblTeksti.text = vargu[indexPath.row].titulli
        tableView.rowHeight = 203.3
        return cell
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return vargu.count 

        }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "lajmet", sender: vargu[indexPath.row])
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "lajmet"{
        
        let detail = segue.destination as? SelectedNewsViewController
            detail?.obj = sender as? NjoftimetModel
            
            
        }
    }
}
extension String {
    public var withoutHtml: String {
        guard let data = self.data(using: .utf8) else {
            return self
        }
        
        let options: [NSAttributedString.DocumentReadingOptionKey: Any] = [
            .documentType: NSAttributedString.DocumentType.html,
            .characterEncoding: String.Encoding.utf8.rawValue
        ]
        
        guard let attributedString = try? NSAttributedString(data: data, options: options, documentAttributes: nil) else {
            return self
        }
        
        return attributedString.string
    }
}
