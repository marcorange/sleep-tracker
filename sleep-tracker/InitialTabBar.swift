//
//  InitialTabBar.swift
//  sleep-tracker
//
//  Created by disco on 01.04.2022.
//

import UIKit

class InitialTabBar: UITabBarController {

	@IBInspectable private var initialIndex: Int = 0
	
    override func viewDidLoad() {
        super.viewDidLoad()

		selectedIndex = initialIndex
		createProfileBarItem()
    }

	private func createProfileBarItem() {
		let profileNavigationVC = UINavigationController(rootViewController: ProfileViewController())
		self.viewControllers?.insert(profileNavigationVC, at: 0)
		
		guard let profileBarItem = self.tabBar.items?[0] else {
			return
		}
		profileBarItem.image = UIImage(systemName: "person")
		profileBarItem.badgeColor = .black
		profileBarItem.title = "Profile"
	}

}
