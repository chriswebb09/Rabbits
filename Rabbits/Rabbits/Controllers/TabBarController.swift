//
//  TabBarController.swift
//  Rabbits
//
//  Created by Christopher Webb-Orenstein on 9/16/16.
//  Copyright © 2016 Christopher Webb-Orenstein. All rights reserved.
//

import UIKit

class TabBarController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupTabs()
        view.backgroundColor = UIColor.white
    }
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        let tabBarHeight = view.frame.height * 0.092
        var tabFrame = tabBar.frame
        tabFrame.size.height = tabBarHeight
        tabFrame.origin.y = view.frame.size.height - tabBarHeight
        tabBar.frame = tabFrame
    }
    
    func setupTabs() {
        tabBar.tintColor = UIColor.white
        tabBar.barTintColor = UIColor(red:0.00, green:0.49, blue:0.76, alpha:1.0)
    }
}
