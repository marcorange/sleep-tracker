//
//  TableViewController.swift
//  sleep-tracker
//
//  Created by ksenia on 27.03.2022.
//

import UIKit

class TableViewController: UIViewController {

    var list = ["one", "two", "one", "two", "one", "two", "one", "two", "one", "two", "one", "two", "one", "two", "one", "two", "one", "two", "one", "two", "one", "two", "one", "two", "one", "two", "one", "two", "one", "two", "one", "two", "one", "two", "one", "two", "one", "two", "one", "two", "one", "two", "one", "two", "one", "two", "one", "two"]

    @IBOutlet var tableView: UITableView!
    @IBOutlet var collectionView: UICollectionView!

    override func viewDidLoad() {
        super.viewDidLoad()

//        tableView.delegate = self
        tableView.dataSource = self

//        collectionView.delegate = self
        collectionView.dataSource = self
    }

}

extension TableViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "id2", for: indexPath) as? CollectionViewCell else { return UICollectionViewCell() }

        cell.label.text = list[indexPath.row]
        cell.pic.image = UIImage(named: "marcel")

        return cell
    }

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return list.count
    }

}

extension TableViewController: UITableViewDataSource {

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "ident1", for: indexPath) as? TableViewCell else { return UITableViewCell() }

        cell.label.text = list[indexPath.row]
        cell.pic.image = UIImage(named: "marcel")

        return cell
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return list.count
    }

}
