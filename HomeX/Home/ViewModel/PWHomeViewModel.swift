//
//  PWHomeViewModel.swift
//  HomeX
//
//  Created by mike on 2025/1/10.
//

import UIKit

class PWHomeViewModel: ObservableObject {
    
    func palyDidClicked() {
        if let appDelegate = UIApplication.shared.delegate as? AppDelegate {
            let home = PWHomeViewController()
            appDelegate.appNav?.pushViewController(home, animated: true)
        }
    }
}
