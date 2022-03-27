//
//  OKViewController.swift
//  sleep-tracker
//
//  Created by disco on 13.03.2022.
//

import UIKit

class OKViewController: UIViewController {

	@IBOutlet private var messageLabel: UILabel!
	var messageText = ""
	
	override func viewDidLoad() {
        super.viewDidLoad()
		messageLabel.text = messageText
    }
	
	@IBAction private func didTapOK(_ sender: Any) {
		dismiss(animated: true, completion: nil)
	}
	
}
