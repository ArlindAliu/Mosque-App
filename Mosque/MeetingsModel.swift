//
//  MeetingsModel.swift
//  Mosque
//
//  Created by Arlind Aliu on 10/23/18.
//  Copyright © 2018 Arlind Aliu. All rights reserved.
//

import UIKit

class MeetingsModel: NSObject {

    var dita: String
    var ora : String
    var foto : String
    
    init(dita: String, ora: String, foto: String) {
        self.dita = dita
        self.ora = ora
        self.foto = foto
    }
    
}
