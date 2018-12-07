//
//  SkinciViewController.swift
//  Mosque
//
//  Created by PlusComputers on 11/21/18.
//  Copyright © 2018 Arlind Aliu. All rights reserved.
//

import UIKit

class SkinciViewController: UIViewController {

    
    @IBOutlet weak var asd: UIScrollView!
    
    var slides1 : [Slide] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()

        func setup(slides : [Slide]) {
            asd.frame = CGRect(x: 0, y: 0, width: self.view.frame.width, height: self.view.frame.height)
            asd.contentSize = CGSize(width: view.frame.width * CGFloat(slides.count), height: view.frame.height)
            asd.isPagingEnabled = true
            
            for i in 0..<slides.count {
                slides[i].frame = CGRect(x: view.frame.width * CGFloat(i), y: 0, width: view.frame.width, height: view.frame.height)
                asd.addSubview(slides[i])
            }
            
           
        }
        slides1 = createSlides()
        setup(slides: slides1)
        // Do any additional setup after loading the view.
        view.bringSubview(toFront: slides1[0])
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
func createSlides() -> [Slide] {
    
    let slide1 : Slide = Bundle.main.loadNibNamed("cinci", owner: nil, options: nil)?.first as! Slide
    slide1.imagi.image = UIImage(named: "antarsiaFoto")!
    
    let slide2 : Slide = Bundle.main.loadNibNamed("cinci", owner: nil, options: nil)?.first as! Slide
    slide1.imagi.image = UIImage(named: "layer4")!
    
    let slide3 : Slide = Bundle.main.loadNibNamed("cinci", owner: nil, options: nil)?.first as! Slide
    slide1.imagi.image = UIImage(named: "antarsiaFoto")!
   
    return [slide1,slide2,slide3]
}
func setupSlideScollView(slides : [Slide]){
    
    
    
}











