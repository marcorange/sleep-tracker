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
		createBackButton()
		createDiaryButton()
	}
	
	private func createTitle() {
		let titleLabel = UILabel()
		titleLabel.translatesAutoresizingMaskIntoConstraints = false
		titleLabel.text = "Profile"
		titleLabel.font = UIFont(name: "Arial Rounded MT Bold", size: 30)
		titleLabel.textColor = UIColor.white
		view.addSubview(titleLabel)
		
		titleLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
		titleLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 75).isActive = true
	}
	
	private func createProfilePicture() {
		let profilePicture = PictureView()
		profilePicture.imageName = "marcel"
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
		userNameLabel.bottomAnchor.constraint(equalTo: view.topAnchor, constant: 390).isActive = true
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
	
	private func createDiaryButton() {
		let diaryButton = UIButton()
		diaryButton.frame = CGRect(x: view.frame.size.width / 2 - 90, y: view.frame.size.height - 125, width: 180, height: 60)
		diaryButton.backgroundColor = UIColor.systemIndigo
		diaryButton.layer.cornerRadius = 30
		diaryButton.setTitle("Open Diary", for: .normal)
		diaryButton.setTitleColor(.white, for: .normal)
		diaryButton.titleLabel?.font = UIFont(name: "Arial Rounded MT Bold", size: 20)
		diaryButton.addTarget(self, action: #selector(didTapDiary), for: .touchUpInside)
		view.addSubview(diaryButton)
	}
	
	@IBAction func didTapBack(sender: UIButton!) {
		dismiss(animated: true, completion: nil)
	}
	
	@IBAction func didTapDiary(sender: UIButton!) {
		let diaryVC = DiaryViewController()
		navigationController?.pushViewController(diaryVC, animated: true)
		present(diaryVC, animated: true)
	}
}

