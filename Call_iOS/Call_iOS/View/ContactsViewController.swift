//
//  ContactsViewController.swift
//  Call_iOS
//
//  Created by 신주희 on 9/12/25.
//


import UIKit
import SnapKit
import Then


class ContactsViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    let tableView = UITableView()
    var state: Bool = true
    
    // 테이블뷰에 표시할 데이터
    let items = [
        "07 이지수",
        "08 이서효",
        "09 곽도윤",
        "09 박민주",
        "09 이유진",
        "09 지현우"
    ]
    
    let contactsLabel = UILabel().then {
        $0.text = "연락처"
        $0.font = .systemFont(ofSize: 35, weight: .bold)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        tableView.rowHeight = 70
        
        
        tableView.dataSource = self
        tableView.delegate = self
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        tableView.backgroundColor = .white
        
        view.addSubview(tableView)
        view.addSubview(contactsLabel)
        
        
        tableView.snp.makeConstraints {
            $0.top.equalTo(contactsLabel.snp.bottom).offset(10) // 세그먼트 밑으로
            $0.leading.trailing.bottom.equalToSuperview()
        }
        
        contactsLabel.snp.makeConstraints {
            $0.top.equalTo(view.safeAreaLayoutGuide.snp.top).offset(10)
            $0.leading.equalToSuperview().inset(20)
        }
        
    }
    
    
    // UITableViewDataSource
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    // tableview의 셀 개수를 items 개수만큼 설정함
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = items[indexPath.row]
        cell.backgroundColor = .white
        cell.textLabel?.textColor = .black
        cell.imageView?.image = UIImage(systemName: "person.crop.circle")
        cell.imageView?.tintColor = .lightGray
        
        
        return cell
    }
    
    
}
