//
//  PWUITabBarController.swift
//  HomeX
//
//  Created by mike on 2025/1/9.
//

import UIKit

class PWUITabBarController: UITabBarController, PWUINavigationProtocol {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configView()
    }
    
    func configView() {
        let home = PWHomePageVC()
        home.title = "Home".localized
        home.tabBarItem.image = UIImage(systemName: "house")
        home.tabBarItem.selectedImage = UIImage(systemName: "house.fill")
        
        let explore = PWExploreViewController()
        explore.title = "explore".localized
        explore.tabBarItem.image = UIImage(systemName: "house")
        explore.tabBarItem.selectedImage = UIImage(systemName: "house.fill")
        
        let mine = PWMineViewController()
        mine.title = "person".localized
        mine.tabBarItem.image = UIImage(systemName: "person")
        mine.tabBarItem.selectedImage = UIImage(systemName: "person.fill")
        
        self.viewControllers = [home, explore, mine]
        
        self.tabBar.shadowImage = UIImage()
        self.tabBar.backgroundImage = UIImage()
        self.tabBar.isTranslucent = false
        let shadowLine = UIView(frame: CGRect(x: 0, y: 0, width: tabBar.bounds.width, height: 0.5))
        shadowLine.backgroundColor = UIColor.lightGray
        tabBar.addSubview(shadowLine)
    }
    
    func slideEnable() -> Bool {
        false
    }
    
    func navBarHidden() -> Bool {
        true
    }
}
