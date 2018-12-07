//
//  AntarsiaArray.swift
//  Mosque
//
//  Created by Arlind Aliu on 10/26/18.
//  Copyright © 2018 Arlind Aliu. All rights reserved.
//

import UIKit

class AntarsiaArray: NSObject {

    var vargu : [AntarsiaModel] = [AntarsiaModel]()
    
    internal override init() {
        
        let antarsia1 = AntarsiaModel.init(fotoja: "", emri: "akil", pozita: "aktor")
     vargu.append(antarsia1)
        let antari2 = AntarsiaModel.init(fotoja: "", emri: "Hashim Selami", pozita: "")
        vargu.append(antari2)
        let antari3 = AntarsiaModel.init(fotoja: "", emri: "Amir Muaremi", pozita: "")
        vargu.append(antari3)
        let antari4 = AntarsiaModel.init(fotoja: "", emri: "Ixhet Rexhepi", pozita: "")
        vargu.append(antari4)
        let antari5 = AntarsiaModel.init(fotoja: "", emri: "Rami Musliu", pozita: "")
        vargu.append(antari5)
        
    }
    
    
    
    
}
