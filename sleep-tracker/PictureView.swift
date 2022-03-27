//
//  PictureView.swift
//  sleep-tracker
//
//  Created by ksenia on 27.03.2022.
//

import UIKit

class PictureView: UIImageView {

    override func layoutSubviews() {
        super.layoutSubviews()

        translatesAutoresizingMaskIntoConstraints = false
        image = UIImage(named: "marcel")
        layer.masksToBounds = true
        layer.borderColor = UIColor.white.cgColor
        layer.borderWidth = 10
        layer.cornerRadius = 175 / 2
    }

}
