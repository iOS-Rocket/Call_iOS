//
//  KeypadViewController.swift
//  Call_iOS
//
//  Created by 신주희 on 9/16/25.
//

import UIKit
import SnapKit
import Then

class KeypadViewController: UIViewController {
    
    let messageLabel = UILabel().then {
        $0.text = "아직 개발 중이에요 !"
        $0.textColor = .gray
        $0.font = .systemFont(ofSize: 24, weight: .light)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        
        view.addSubview(messageLabel)
        
        
        messageLabel.snp.makeConstraints {
            $0.centerX.equalToSuperview()
            $0.top.equalToSuperview().offset(350)
        }
    }
}
