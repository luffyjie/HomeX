//
//  PWExploreViewController .swift
//  HomeX
//
//  Created by mike on 2025/1/10.
//

import UIKit

class PWExploreViewController : PWUIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        configView()
    }

    func configView() {
        let button = UIButton(type: .system)
        button.setTitle("test mode", for: .normal)
        button.addTarget(self, action: #selector(testAction), for: .touchUpInside)
        self.view.addSubview(button)
        button.snp.makeConstraints { make in
            make.center.equalTo(self.view)
        }
    }
    
    @objc func testAction() {
        let camInfo = PWCamInfoViewController()
        let nav = PWUINavigationController(rootViewController: camInfo)
        nav.modalPresentationStyle = .fullScreen
        self.present(nav, animated: true)
    }
}
