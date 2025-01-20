//
//  PWMineViewController .swift
//  HomeX
//
//  Created by mike on 2025/1/10.
//

import UIKit

class PWMineViewController : PWUIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Mine"
        
        configView()
    }

    func configView() {
        let scrollView = UIScrollView()
        self.view.addSubview(scrollView)
        scrollView.snp.makeConstraints { make in
            make.top.equalTo(self.view.safeAreaLayoutGuide.snp.top);
            make.left.equalTo(self.view)
            make.right.equalTo(self.view)
            make.width.equalTo(self.view)
            make.bottom.equalTo(self.view)
        }
        
        let label = UILabel()
        label.textColor = .black
        label.numberOfLines = 0
        label.font = .systemFont(ofSize: 18)
        label.text = "Requesting visual style in an implementation that has disabled it, returning nil. Behavior of caller is undefined.Requesting visual style in an implementation that has disabled it, returning nil. \n  Behavior of caller is undefined.Requesting visual style in an implementation that has disabled it, returning nil. Behavior of caller is undefined.Requesting visual style in an implementation that has disabled it, returning nil. Behavior of caller is undefined.Requesting visual style in an implementation that has disabled it, returning nil. \n Behavior of caller is undefined.Requesting visual style in an implementation that has disabled it, returning nil. Behavior of caller is undefined.Requesting visual style in an implementation that has disabled it, returning nil. Behavior of caller is undefined.Requesting visual style in an implementation that has disabled it, returning nil. Behavior of caller is undefined.Requesting visual style in an implementation that has disabled it, returning nil. Behavior of caller is  \n  undefined.Requesting visual style \n  in an implementation that has disabled it, returning nil. Behavior of caller is undefined.Requesting visual style in an implementation that has disabled it, returning nil. Behavior of caller is undefined.Requesting visual style in an implementation that has disabled it, returning nil. Behavior of caller is undefined.Requesting visual \n  style in an implementation that has disabled it, returning nil. Behavior of caller is undefined.Requesting visual style  \n in an implementation that has disabled it, returning nil. Behavior of caller is undefined.Requesting visual style in an implementation that has disabled it, returning nil.  \n Behavior of caller is undefined.Requesting visual style in an implementation that has disabled it, returning nil. Behavior of caller is undefined."
        scrollView.addSubview(label)
        label.snp.makeConstraints { make in
            make.top.equalTo(scrollView)
            make.left.equalTo(scrollView).offset(16)
            make.width.equalTo(scrollView).offset(-32)
        }
        
        scrollView.snp.makeConstraints { make in
            make.bottom.equalTo(label)
        }
    }
}
