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
		
		let datePicker = UIDatePicker()
		datePicker.frame = CGRect(x: 10, y: 10, width: view.frame.width - 50, height: 50)
		datePicker.backgroundColor = UIColor(named: "customPink")
		datePicker.addTarget(self, action: #selector(datePickerValueChanged), for: .valueChanged)
		view.addSubview(datePicker)
    }
	
	@objc func datePickerValueChanged(_ sender: UIDatePicker){
			let dateFormatter = DateFormatter()
			dateFormatter.dateFormat = "MM/dd/yyyy"
		}
}
