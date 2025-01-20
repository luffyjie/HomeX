//
//  PWUIViewController.swift
//  HomeX
//
//  Created by mike on 2025/1/9.
//

import UIKit

class PWUIViewController: UIViewController, PWUINavigationProtocol {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = .white;
    }
    
    func slideEnable() -> Bool {
        return true
    }
    
    func navBarHidden() -> Bool {
        return false
    }
}
