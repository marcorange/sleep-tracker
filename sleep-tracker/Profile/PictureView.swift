//
//  PictureView.swift
//  sleep-tracker
//
//  Created by disco on 31.03.2022.
//

import UIKit

class PictureView: UIImageView {

	var imageName = ""

	override func layoutSubviews() {
		super.layoutSubviews()

		translatesAutoresizingMaskIntoConstraints = false
		image = UIImage(named: imageName)
		layer.masksToBounds = true
		layer.borderColor = UIColor.white.cgColor
		layer.borderWidth = 10
		layer.cornerRadius = 175 / 2
	}
}
