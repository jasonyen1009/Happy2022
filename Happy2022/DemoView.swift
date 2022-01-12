//
//  DemoView.swift
//  Happy2022
//
//  Created by Hong Cheng Yen on 2022/1/4.
//

import UIKit

class DemoView: UIView {

    var gradientLayer: CAGradientLayer!
        override func layoutSubviews() {
//            print("first \(gradientLayer)")
            super.layoutSubviews()
            if gradientLayer == nil {
               gradientLayer = CAGradientLayer()
               gradientLayer.colors = [
               CGColor(srgbRed: 1, green: 0, blue: 0, alpha: 1),
               CGColor(srgbRed: 0, green: 0, blue: 1, alpha: 1)
               ]
               layer.insertSublayer(gradientLayer, at: 0)
            }
            gradientLayer.frame = bounds
            print("sencod \(gradientLayer!)")
        }

}
