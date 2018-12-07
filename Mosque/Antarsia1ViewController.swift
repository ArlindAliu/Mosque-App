//
//  Antarsia1ViewController.swift
//  Mosque
//
//  Created by Arlind Aliu on 10/26/18.
//  Copyright © 2018 Arlind Aliu. All rights reserved.
//

import UIKit

class Antarsia1ViewController: UIViewController , UITableViewDataSource, UITableViewDelegate{

    @IBOutlet weak var tableView: UITableView!
    
    @IBOutlet weak var viewi: UIView!
    
    @IBOutlet weak var butoni: UIButton!
    
    var vargu = [AntarsiaModel]()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource = self
        tableView.delegate = self
        viewi.layer.cornerRadius = 15
        butoni.showsTouchWhenHighlighted = true
        fillData()
        
    }

    func fillData(){
    
        let abc = AntarsiaModel.init(fotoja: "antarsiaFoto", emri: "Bekim Alimi", pozita: "ProjektManager")
        let abc1 = AntarsiaModel.init(fotoja: "", emri: "Hashim Selami", pozita: "")
        let abc2 = AntarsiaModel.init(fotoja: "", emri: "Amir Muaremi", pozita: "")
        let abc3 = AntarsiaModel.init(fotoja: "", emri: "Ixhet Rexhepi", pozita: "")
        let abc4 = AntarsiaModel.init(fotoja: "", emri: "Rami Musliu", pozita: "")
        
        vargu.append(abc)
        vargu.append(abc1)
        vargu.append(abc2)
        vargu.append(abc3)
        vargu.append(abc4)
    }
    @IBAction func backButton(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "celli") as! AntarsiaTableViewCell
        cell.fotoja.image = UIImage(named: "\(vargu[indexPath.row].fotoja)")
        cell.emri.text = vargu[indexPath.row].emri
        cell.pozita.text = vargu[indexPath.row].pozita
        
        
        return cell
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return vargu.count
    }
}
