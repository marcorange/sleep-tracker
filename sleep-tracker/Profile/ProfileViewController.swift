//
//  ProfileViewController.swift
//  sleep-tracker
//
//  Created by disco on 15.03.2022.
//

import UIKit

class ProfileViewController: UIViewController {
	
	override func viewDidLoad() {
		super.viewDidLoad()
		view.backgroundColor = .customNavyBlue
		createTitle()
		createProfilePicture()
		createUserName()
		createSettingsButton()
	}
	
	private func createTitle() {
		let titleLabel = UILabel()
		titleLabel.translatesAutoresizingMaskIntoConstraints = false
		titleLabel.text = "Profile"
		titleLabel.font = UIFont(name: "Arial Rounded MT Bold", size: 30)
		titleLabel.textColor = UIColor.white
		view.addSubview(titleLabel)
		
		titleLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
		titleLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 150).isActive = true
	}
	
	private func createProfilePicture() {
		let profilePicture = UserPicView()
		profilePicture.imageName = "marcel"
		profilePicture.translatesAutoresizingMaskIntoConstraints = false
		view.addSubview(profilePicture)
		
		profilePicture.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
		profilePicture.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
		profilePicture.widthAnchor.constraint(equalToConstant: 175).isActive = true
		profilePicture.heightAnchor.constraint(equalToConstant: 175).isActive = true
		
	}
	
	private func createUserName() {
		let userNameLabel = UILabel()
		userNameLabel.translatesAutoresizingMaskIntoConstraints = false
		userNameLabel.text = "Marcel"
		userNameLabel.font = UIFont(name: "Arial Rounded MT Bold", size: 22)
		userNameLabel.textColor = UIColor.white
		view.addSubview(userNameLabel)
		
		userNameLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
		userNameLabel.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -200).isActive = true
	}
	
	private func createBackButton() {
		let backButton = UIButton()
		backButton.frame = CGRect(x: 20, y: 20, width: 50, height: 30)
		backButton.backgroundColor = UIColor.systemIndigo
		backButton.layer.cornerRadius = 10
		backButton.setTitle("Back", for: .normal)
		backButton.setTitleColor(.white, for: .normal)
		backButton.titleLabel?.font = UIFont(name: "Arial Rounded MT Bold", size: 12)
		backButton.addTarget(self, action: #selector(didTapBack), for: .touchUpInside)
		view.addSubview(backButton)
	}
	
	private func createSettingsButton() {
		let button = UIButton()
		button.frame = CGRect(x: view.frame.size.width / 2 - 90, y: view.frame.size.height - 125, width: 180, height: 60)
		button.backgroundColor = UIColor.systemIndigo
		button.layer.cornerRadius = 30
		button.setTitle("Settings", for: .normal)
		button.setTitleColor(.white, for: .normal)
		button.titleLabel?.font = UIFont(name: "Arial Rounded MT Bold", size: 20)
		button.addTarget(self, action: #selector(didTapSettings), for: .touchUpInside)
		view.addSubview(button)
	}
	
	@IBAction func didTapBack(sender: UIButton!) {
		dismiss(animated: true, completion: nil)
	}
	
	@IBAction private func didTapSettings(_ sender: Any) {
		let settingsVC = SettingsViewController()
//		settingsVC.passedData = dataToPass
		navigationController?.pushViewController(settingsVC, animated: true)
	}
}

