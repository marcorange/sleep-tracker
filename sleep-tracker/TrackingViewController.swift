//
//  ViewController.swift
//  sleep-tracker
//
//  Created by disco on 01.03.2022.
//

import UIKit

class TrackingViewController: UIViewController {

	@IBOutlet private weak var hoursField: UITextField!
	private var dataToPass = -1
	
	override func viewDidLoad() {
		super.viewDidLoad()
		hoursField.text = ""
//		hoursField.delegate = self
	}

	override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
		guard let hours = hoursField.text, let intInput = Int(hours), intInput >= 0, intInput <= 24
		else { return }
		if let destVC = segue.destination as? OKViewController, segue.identifier == "goToOK" {
			destVC.messageText = "You've slept for \(intInput) hours last time"
			dataToPass = intInput
		}
	}
	
	@IBAction private func didTapSettings(_ sender: Any) {
		let vc = SettingsViewController()
		vc.passedData = dataToPass
		present(vc, animated: true)
	}
	
	@IBAction private func didTapProfile(_ sender: Any) {
		let profileVC = ProfileViewController()
//		present(profileVC, animated: true)
		navigationController?.pushViewController(profileVC, animated: true)
	}
}

extension TrackingViewController: UITextFieldDelegate {
	func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
		guard (textField.text?.count ?? 0) < 2 || string.isEmpty else { return false }
		return true
	}
}
