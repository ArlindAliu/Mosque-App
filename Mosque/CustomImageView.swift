//
//  CustomImageView.swift
//  Mosque
//
//  Created by PlusComputers on 11/9/18.
//  Copyright © 2018 Arlind Aliu. All rights reserved.
//

import Foundation
import UIKit

let imageCache = NSCache<AnyObject, AnyObject>()

class CustomImageView: UIImageView {
    
//    var imageUrlString: String?
//
//    func loadImageUsingUrlString(urlString: String) {
//
//        imageUrlString = urlString
//
//        let url = NSURL(string: urlString)
//
//        image = nil
//
//        if let imageFromCache = imageCache.object(forKey: urlString as AnyObject) as? UIImage {
//            self.image = imageFromCache
//            return
//        }
//
//        URLSession.shared.dataTask(with: url! as URL, completionHandler: { (data, respones, error) in
//
//            if error != nil {
//                print(error)
//                return
//            }
//
//            DispatchQueue.main.async() {
//
//                let imageToCache = UIImage(data: data!)
//
//                if self.imageUrlString == urlString {
//                    self.image = imageToCache
//                }
//
//                imageCache.setObject(imageToCache!, forKey: urlString as AnyObject)
//            }
//
//        }).resume()
//    }
    
}
