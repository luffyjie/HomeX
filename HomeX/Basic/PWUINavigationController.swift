//
//  PWUINavigationController.swift
//  HomeX
//
//  Created by mike on 2025/1/9.
//

import UIKit
import SwiftUI

protocol PWUINavigationProtocol {
    
    func slideEnable() -> Bool
    
    func navBarHidden() -> Bool
}

class PWUINavigationController: UINavigationController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        interactivePopGestureRecognizer?.delegate = self
        self.delegate = self;
    }
}

extension PWUINavigationController: UIGestureRecognizerDelegate {
    
    func gestureRecognizerShouldBegin(_ gestureRecognizer: UIGestureRecognizer) -> Bool {
        if (viewControllers.count > 1) {
            if let viewController = viewControllers.last as? PWUINavigationProtocol {
                return viewController.slideEnable()
            }
            return true
        }
        return false
    }
}

extension PWUINavigationController: UINavigationControllerDelegate {
    
    func navigationController(_ navigationController: UINavigationController, willShow viewController: UIViewController, animated: Bool) {
        if let viewController = viewControllers.last as? PWUINavigationProtocol {
            navigationController.setNavigationBarHidden(viewController.navBarHidden(), animated: true)
        } else {
            navigationController.setNavigationBarHidden(false, animated: true)
        }
    }
}
