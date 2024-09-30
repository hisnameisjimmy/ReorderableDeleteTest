//
//  UIColor+Random.swift
//  ReorderableDeleteTest
//
//  Created by Jimmy Hooker on 9/29/24.
//

import UIKit

extension UIColor {
    static func random() -> UIColor {
        return UIColor(
            red: CGFloat.random(in: 0.3...0.9),
            green: CGFloat.random(in: 0.3...0.9),
            blue: CGFloat.random(in: 0.3...0.9),
            alpha: 1.0
        )
    }
}
