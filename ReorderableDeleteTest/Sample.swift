//
//  Sample.swift
//  ReorderableDeleteTest
//
//  Created by Jimmy Hooker on 9/29/24.
//

import SwiftUI

struct Sample: Identifiable, Equatable {
    let id: UUID
    var color: UIColor
    var number: Int
    var height: CGFloat
    
    init(color: UIColor, number: Int, height: CGFloat) {
        self.id = UUID()
        self.color = color
        self.number = number
        self.height = height
    }
}

