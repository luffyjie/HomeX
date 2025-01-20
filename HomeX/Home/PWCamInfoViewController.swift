//
//  PWCamInfoViewController .swift
//  HomeX
//
//  Created by mike on 2025/1/10.
//

import UIKit

class PWCamInfoViewController : PWUIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Cam info page"
        
        configView()
    }
    
    func configView() {
        let button = UIButton(type: .system)
        button.setTitle("Close", for: .normal)
        button.addTarget(self, action: #selector(closeAction), for: .touchUpInside)
        self.view.addSubview(button)
        button.snp.makeConstraints { make in
            make.center.equalTo(self.view)
        }
    }
    
    @objc func closeAction() {
        self.dismiss(animated: true)
    }
}
