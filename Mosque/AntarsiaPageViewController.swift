//
//  AntarsiaPageViewController.swift
//  Mosque
//
//  Created by Arlind Aliu on 10/26/18.
//  Copyright © 2018 Arlind Aliu. All rights reserved.
//

import UIKit

class AntarsiaPageViewController: UIPageViewController, UIPageViewControllerDataSource {

    lazy var viewControllerList: [UIViewController] = {
    
    let sb = UIStoryboard.init(name: "Main", bundle: nil)
    
        let vc1 = sb.instantiateViewController(withIdentifier: "antarsia1")
        let vc2 = sb.instantiateViewController(withIdentifier: "antarsia2")
        let vc3 = sb.instantiateViewController(withIdentifier: "antarsia3")
        let vc4 = sb.instantiateViewController(withIdentifier: "antarsia4")
        let vc5 = sb.instantiateViewController(withIdentifier: "antarsia5")
        let vc6 = sb.instantiateViewController(withIdentifier: "antarsia6")
        
        return [vc1, vc2, vc3, vc4, vc5, vc6]
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.dataSource = self
        
        if let firstViewController = viewControllerList.first{
        
            self.setViewControllers([firstViewController], direction: .forward, animated: true, completion: nil)
        }
    }

    func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
        
        guard let vcIndex = viewControllerList.index(of: viewController) else {return nil}
        
        let previousIndex = vcIndex - 1
        
        guard previousIndex >= 0 else {return nil}
        
        guard viewControllerList.count > previousIndex else {return nil}
        
        return viewControllerList[previousIndex]
        
        
    }
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
        
        guard let vcIndex = viewControllerList.index(of: viewController) else {return nil}
        
        let nextIndex = vcIndex + 1
        
        guard viewControllerList.count != nextIndex else {return nil}
        
        return viewControllerList[nextIndex]
        
        
        
        
        
    }
    

}
