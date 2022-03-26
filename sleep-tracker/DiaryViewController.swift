//
//  DiaryViewController.swift
//  sleep-tracker
//
//  Created by disco on 18.03.2022.
//

import UIKit

class DiaryViewController: UIViewController {
	
	override func viewDidLoad() {
		super.viewDidLoad()
		createDatePicker()
	}
	
	private func createDatePicker() {
		let datePicker = UIDatePicker()
		datePicker.frame = CGRect(x: 10, y: 10, width: view.frame.width - 50, height: 50)
		datePicker.backgroundColor = .customPink
		view.addSubview(datePicker)
	}
}
