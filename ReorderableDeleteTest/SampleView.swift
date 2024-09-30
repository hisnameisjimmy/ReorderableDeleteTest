//
//  SampleView.swift
//  ReorderableDeleteTest
//
//  Created by Jimmy Hooker on 9/29/24.
//

import SwiftUI

struct SampleView: View {
    var sample: Sample
    var onDelete: () -> Void
    
    var body: some View {
        HStack {
            RoundedRectangle(cornerRadius: 32, style: .continuous)
                .fill(Color(sample.color))
                .frame(height: sample.height)
                .padding()
            
            Spacer()
            
            Button(action: onDelete) {
                Text("Delete")
                    .foregroundColor(.red)
                    .padding(.trailing, 16)
            }
        }
        .background(Color(UIColor.secondarySystemBackground))
        .cornerRadius(10)
        .shadow(radius: 2)
        .padding(.vertical, 4)
    }
}

