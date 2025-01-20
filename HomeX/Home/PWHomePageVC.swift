//
//  PWHomeVC.swift
//  HomeX
//
//  Created by mike on 2025/1/17.
//

import UIKit
import SwiftUI

class PWHomePageVC: PWUIViewController {
    var homeViewModel = PWHomeViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        loadUI()
    }
    
    func loadUI() {
        let heartRateView = PWHomeView(viewModel: homeViewModel)
        let hostingController = UIHostingController(rootView: heartRateView)
        self.addChild(hostingController)
        self.view.addSubview(hostingController.view)
        hostingController.view.snp.makeConstraints { make in
            make.edges.equalTo(self.view)
        }
        hostingController.didMove(toParent: self)
    }
}
