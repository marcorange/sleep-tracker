//
//  DiaryViewController.swift
//  sleep-tracker
//
//  Created by disco on 18.03.2022.
//

import UIKit

class DiaryViewController: UIViewController {
    @IBOutlet var tableView: UITableView!

	override func viewDidLoad() {
		super.viewDidLoad()
		createDatePicker()
        tableView.dataSource = self
        tableView.register(UINib(nibName: "TableViewDiaryTableViewCell", bundle: nil), forCellReuseIdentifier: "id3")
	}
	
	private func createDatePicker() {
		let datePicker = UIDatePicker()
		datePicker.frame = CGRect(x: 10, y: 10, width: view.frame.width - 50, height: 50)
		datePicker.backgroundColor = .customPink
		view.addSubview(datePicker)
	}
}

extension DiaryViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "id3", for: indexPath) as? TableViewDiaryTableViewCell else { return UITableViewCell() }

//        cell.label.text = list[indexPath.row]
//        cell.pic.image = UIImage(named: "marcel")

        return cell
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
}
