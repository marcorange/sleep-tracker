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
		view.backgroundColor = UIColor(named: "customBackground")
		
		let title = UILabel()
		title.translatesAutoresizingMaskIntoConstraints = false
		title.text = "Profile"
		title.font = UIFont(name: "Arial Rounded MT Bold", size: 30)
		title.textColor = UIColor.white
		view.addSubview(title)
		
		title.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
		title.topAnchor.constraint(equalTo: view.topAnchor, constant: 75).isActive = true
		
		let profilePicture = UIImageView()
		profilePicture.translatesAutoresizingMaskIntoConstraints = false
		profilePicture.image = UIImage(named: "marcel")
		profilePicture.layer.masksToBounds = true
		profilePicture.layer.borderColor = UIColor.white.cgColor
		profilePicture.layer.borderWidth = 10
		view.addSubview(profilePicture)
		
		profilePicture.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
		profilePicture.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
		profilePicture.widthAnchor.constraint(equalToConstant: 175).isActive = true
		profilePicture.heightAnchor.constraint(equalToConstant: 175).isActive = true
		profilePicture.layer.cornerRadius = 175 / 2
		
		let userName = UILabel()
		userName.translatesAutoresizingMaskIntoConstraints = false
		userName.text = "Marcel"
		userName.font = UIFont(name: "Arial Rounded MT Bold", size: 22)
		userName.textColor = UIColor.white
		view.addSubview(userName)
		
		userName.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
		userName.topAnchor.constraint(equalTo: profilePicture.bottomAnchor, constant: 20).isActive = true

		let backButton = UIButton()
		backButton.frame = CGRect(x: 20, y: 20, width: 50, height: 30)
		backButton.backgroundColor = UIColor.systemIndigo
		backButton.layer.cornerRadius = 10
		backButton.setTitle("Back", for: .normal)
		backButton.setTitleColor(.white, for: .normal)
		backButton.titleLabel?.font = UIFont(name: "Arial Rounded MT Bold", size: 12)
		backButton.addTarget(self, action: #selector(didTapBack), for: .touchUpInside)
		view.addSubview(backButton)

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
		present(diaryVC, animated: true)
	}
}
