//
//  SettingsViewController.swift
//  sleep-tracker
//
//  Created by disco on 14.03.2022.
//

import UIKit

class SettingsViewController: UIViewController {

	@IBOutlet weak var activityIndicator: UIActivityIndicatorView!
	@IBOutlet weak var record: UILabel!
	var passedData = -1
	
	override func viewDidLoad() {
        super.viewDidLoad()
		record.text = "No records"
    }

	
	@IBAction func refreshDidTap(_ sender: Any) {
		activityIndicator.startAnimating()
		DispatchQueue.main.asyncAfter(deadline: .now() + .milliseconds(500)) {
			self.activityIndicator.stopAnimating()
		}
		guard passedData != -1 else {
			record.text = "No records"
			return
		}
		record.text = "sleep duration: \(passedData)"
	}
	
	@IBAction func backDidTap(_ sender: Any) {
		dismiss(animated: true, completion: nil)
	}
}
