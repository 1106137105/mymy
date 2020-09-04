//
//  OpenViewController.swift
//  friday
//
//  Created by 李孟倫 on 2020/9/2.
//  Copyright © 2020 溫家豪. All rights reserved.
//

import UIKit
import BATabBarController

class OpenViewController: UITabBarController {

    enum DemoTypes {
            case BATabBarWithText
            case BATabBarNoText
        }
        
        var  demotype = DemoTypes.BATabBarNoText
        
        override func viewDidLoad() {
            
            super.viewDidLoad()
            let testController = BATabBarController()
            var tabBarItem, tabBarItem2, tabBarItem3: BATabBarItem
            
            switch (self.demotype) {
            case .BATabBarWithText:
                let option1 = NSMutableAttributedString(string: "Feed")
                option1.addAttribute(.foregroundColor, value: UIColor.white, range: NSRange(location: 0, length: option1.length))
                tabBarItem  = BATabBarItem(image: UIImage(named: "icon1_unselected")!, selectedImage: UIImage(named: "icon1_selected")!, title: option1)
                tabBarItem2 = BATabBarItem(image: UIImage(named: "icon2_unselected")!, selectedImage: UIImage(named: "icon2_selected")!, title: option1)
                tabBarItem3 = BATabBarItem(image: UIImage(named: "icon3_unselected")!, selectedImage: UIImage(named: "icon3_selected")!, title: option1)

            case .BATabBarNoText:
                tabBarItem  = BATabBarItem(image: UIImage(named: "icon1_unselected")!, selectedImage: UIImage(named: "icon1_selected")!)
                tabBarItem2 = BATabBarItem(image: UIImage(named: "icon2_unselected")!, selectedImage: UIImage(named: "icon2_selected")!)
                tabBarItem3 = BATabBarItem(image: UIImage(named: "icon3_unselected")!, selectedImage: UIImage(named: "icon3_selected")!)
            }
            

            let vc1 = UIViewController()
            vc1.view.backgroundColor = .red
            let vc2 = UIViewController()
            vc2.view.backgroundColor = .black
            let vc3 = storyboard?.instantiateViewController(identifier: "signin_VC") as! UIViewController
            
            testController.delegate = self
            testController.viewControllers = [vc1, vc2, vc3]
            testController.tabBarItems = [tabBarItem,tabBarItem2,tabBarItem3]
            
            
            //OPTIONAL SETTINGS
            
            //initial view controller
    //        testController.initialViewController = vc2
            
            //tab bar background color example
            //testController.tabBarBackgroundColor = .black
            
            //tab bar item stroke color example
    //        testController.tabBarItemStrokeColor = .blue
            
            //Tab bar line width example
            //testController.tabBarItemLineWidth = 9.0
            
            //Hides the tab bar when true
            //testController.hidesBottomBarWhenPushed = true
            
            self.view.addSubview(testController.view)
        }
        
    }

    extension OpenViewController: BATabBarControllerDelegate {
        func tabBarController(_ tabBarController: BATabBarController, didSelect: UIViewController) {
            print("Delegate success!");
        }
    }
