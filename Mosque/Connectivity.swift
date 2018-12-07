//
//  Connectivity.swift
//  Mosque
//
//  Created by PlusComputers on 11/2/18.
//  Copyright © 2018 Arlind Aliu. All rights reserved.
//

import UIKit

struct Connectivity {
    static let sharedInstance = NetworkReachabilityManager()!
    static var isConnectedToInternet:Bool {
        return self.sharedInstance.isReachable
    }
}
