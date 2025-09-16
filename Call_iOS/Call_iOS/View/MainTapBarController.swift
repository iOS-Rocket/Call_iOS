//
//  MainTapBarController.swift
//  Call_iOS
//
//  Created by 신주희 on 9/16/25.
//

import UIKit

class MainTabBarController: UITabBarController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let recentsVC = RecentsViewController()
        let favoritesVC = FavoritesViewController()
        let contactsVC = ContactsViewController()
        let keypadVC = KeypadViewController()
        let voicemailVC = VoicemailViewController()
                
        
        favoritesVC.tabBarItem = UITabBarItem(title: "즐겨찾기", image: UIImage(systemName: "star.fill"), tag: 0)
        recentsVC.tabBarItem = UITabBarItem(title: "최근 통화", image: UIImage(systemName: "clock.fill"), tag: 1)
        contactsVC.tabBarItem = UITabBarItem(title: "연락처", image: UIImage(systemName: "person.fill"), tag: 2)
        keypadVC.tabBarItem = UITabBarItem(title: "키패드", image: UIImage(systemName: "circle.grid.3x3.fill"), tag: 3)
        voicemailVC.tabBarItem = UITabBarItem(title: "음성 사서함", image: UIImage(systemName: "waveform"), tag: 4)
        
        
        viewControllers = [
            UINavigationController(rootViewController: favoritesVC),
            UINavigationController(rootViewController: recentsVC),
            UINavigationController(rootViewController: contactsVC),
            UINavigationController(rootViewController: keypadVC),
            UINavigationController(rootViewController: voicemailVC)
        ]
        
    }
}
