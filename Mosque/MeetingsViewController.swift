//
//  MeetingsViewController.swift
//  Mosque
//
//  Created by Arlind Aliu on 10/23/18.
//  Copyright © 2018 Arlind Aliu. All rights reserved.
//

import UIKit
import WebKit
import Alamofire
import SwiftyJSON

class MeetingsViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    @IBOutlet weak var webView: UIWebView!
    @IBOutlet weak var butoni: UIButton!
    var ciu: [MeetingsModel] = []
    var kinci  = ""
     let url = URL(string: "http://1.lagjaledina.com/wp-json/wp/v2/pages?slug=kalendar")
    let huahua = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        
        butoni.showsTouchWhenHighlighted = true
        getData()

       // let urlRequest = URLRequest(url: url!)
       // webView.loadRequest(urlRequest)
        
        //webView.loadHTMLString(<#T##string: String##String#>, baseURL: <#T##URL?#>)
    }

    func getData(){
        
        Alamofire.request(self.url!).responseData (completionHandler: { (data) in
            
            if data.result.isSuccess{
                
                let coinJSON2 = JSON(data.result.value!)
                //print(coinJSON2)
                self.kinci = coinJSON2["content"]["rendered"].stringValue
                let c = self.kinci.data(using: String.Encoding.utf8)
                print("\(c)aaaaaaaaaaaa")
            }
        }
        )}
    
//    func fillTableViews(){
//
//        let antari1 = MeetingsModel.init(dita: "Saturday", ora: "12:23", foto: "Mosque App Favicon")
//        ciu.append(antari1)
//        let antari2 = MeetingsModel.init(dita: "Sunday", ora: "23:22", foto: "Mosque App Favicon")
//        ciu.append(antari2)
//        let antari3 = MeetingsModel.init(dita: "Monday", ora: "13:22", foto: "Mosque App Favicon")
//        ciu.append(antari3)
//        let antari4 = MeetingsModel.init(dita: "Tuesday", ora: "13:33", foto: "Mosque App Favicon")
//        ciu.append(antari4)
//
//    tableView.reloadData()
//    }
//    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//
//        let cell = tableView.dequeueReusableCell(withIdentifier: "celli") as! MeetingsTableViewCell
//        cell.fotoja.image = UIImage(named: ciu[indexPath.row].foto)
//        cell.lblDita.text = ciu[indexPath.row].dita
//        cell.lblOra.text = ciu[indexPath.row].ora
//
//        return cell
//    }
//    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        return ciu.count
//    }
    @IBAction func backBtn(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
}
