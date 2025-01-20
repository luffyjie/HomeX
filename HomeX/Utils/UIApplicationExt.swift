//
//  UIApplicationExt.swift
//  HomeX
//
//  Created by mike on 2025/1/10.
//

import UIKit

import UIKit

extension UIApplication {
    
    class func getTopViewController(base: UIViewController? = UIApplication.shared.connectedScenes
        .compactMap { $0 as? UIWindowScene }.first?.windows
        .filter { $0.isKeyWindow }.first?.rootViewController) -> UIViewController? {
            if let nav = base as? UINavigationController {
                return getTopViewController(base: nav.visibleViewController)
            }
            if let tab = base as? UITabBarController {
                return getTopViewController(base: tab.selectedViewController)
            }
            if let presented = base?.presentedViewController {
                return getTopViewController(base: presented)
            }
            return base
        }
}
