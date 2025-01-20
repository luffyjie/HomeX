//
//  PWHomeViewController .swift
//  HomeX
//
//  Created by mike on 2025/1/9.
//

import UIKit
import SnapKit

class PWHomeViewController : PWUIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor("#F7F7F7")
        
        configView()
    }
    
    func configView() {
        self.view.addSubview(homeBackgroud)
        homeBackgroud.snp.makeConstraints { make in
            make.top.equalTo(self.view)
            make.left.equalTo(self.view)
            make.right.equalTo(self.view)
            make.height.equalTo(400)
        }
        
        self.view.addSubview(navBarView)
        navBarView.snp.makeConstraints { make in
            make.top.equalTo(self.view)
            make.left.equalTo(self.view)
            make.right.equalTo(self.view)
            make.height.equalTo(44)
        }
        
        self.view.addSubview(tableView)
        tableView.snp.makeConstraints { make in
            make.top.equalTo(navBarView.snp.bottom)
            make.left.equalTo(self.view)
            make.right.equalTo(self.view)
            make.bottom.equalTo(self.view)
        }
    }
    
    lazy var tableView: UITableView = {
        let tabview = UITableView(frame: .zero, style: .plain)
        tabview.delegate = self
        tabview.dataSource = self
        tabview.backgroundColor = .clear
        return tabview
    }()
    
    lazy var navBarView: UIView =  {
        let navView = UIView()
        
        let barView = UIView()
        navView.addSubview(barView)
        barView.snp.makeConstraints { make in
            make.bottom.equalTo(navView)
            make.left.equalTo(navView)
            make.right.equalTo(navView)
            make.height.equalTo(44)
        }
        
        let label = UILabel()
        label.text = "Dashboard"
        label.font = .systemFont(ofSize: 18, weight: .medium)
        label.textColor = .black
        barView.addSubview(label)
        label.snp.makeConstraints { make in
            make.left.equalTo(barView).offset(6)
            make.centerY.equalTo(barView)
        }
        
        let addButton = UIButton(type: .system)
        addButton.setImage(UIImage(named: "nav_add"), for: .normal)
        addButton.tintColor = .black
        addButton.addTarget(self, action: #selector(navAddAction), for: .touchUpInside)
        barView.addSubview(addButton)
        addButton.snp.makeConstraints { make in
            make.right.equalTo(barView).offset(-8)
            make.centerY.equalTo(barView)
            make.width.equalTo(40)
            make.height.equalTo(40)
        }
        
        return navView
    }()
    
    lazy var homeBackgroud: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "home_bg")
        imageView.contentMode = .scaleAspectFill
        return imageView
    }()
    
    @objc func navAddAction() {
        
    }
    
    override func viewWillLayoutSubviews() {
        super.viewDidLayoutSubviews()
        let top = self.view.safeAreaInsets.top
        navBarView.snp.updateConstraints { make in
            make.height.equalTo(top > 0 ? 88 : 44)
        }
    }
    
    override func navBarHidden() -> Bool {
        return true;
    }
}

extension PWHomeViewController:  UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 30
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .value1, reuseIdentifier: "cell")
        cell.textLabel?.text = title
        cell.detailTextLabel?.text = "\(indexPath.row)"
        cell.imageView?.image = UIImage(systemName: "leaf.circle")
        cell.backgroundColor = .clear
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 54
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let camPlayVc = PWCamPlayViewController()
        tableView.cellForRow(at: indexPath)?.setSelected(false, animated: false)
        self.navigationController?.pushViewController(camPlayVc, animated: true)
    }
}
