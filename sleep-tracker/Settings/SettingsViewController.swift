//
//  SettingsViewController.swift
//  sleep-tracker
//
//  Created by disco on 14.03.2022.
//

import UIKit

class SettingsViewController: UIViewController {

	@IBOutlet private weak var activityIndicator: UIActivityIndicatorView!
	@IBOutlet private weak var recordLabel: UILabel!
	var passedData = -1
	
	override func viewDidLoad() {
        super.viewDidLoad()
		recordLabel.text = "No records"
    }

	@IBAction private func refreshDidTap(_ sender: Any) {
		activityIndicator.startAnimating()
		DispatchQueue.main.asyncAfter(deadline: .now() + .milliseconds(500)) {
			self.activityIndicator.stopAnimating()
		}
		guard passedData != -1 else {
			recordLabel.text = "No records"
			return
		}
		recordLabel.text = "sleep duration: \(passedData)"
	}
	
	@IBAction private func backDidTap(_ sender: Any) {
		dismiss(animated: true, completion: nil)
	}
}
