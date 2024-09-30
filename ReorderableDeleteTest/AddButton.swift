//
//  AddButton.swift
//  ReorderableDeleteTest
//
//  Created by Jimmy Hooker on 9/29/24.
//

import SwiftUI

struct AddButton: View {
    var add: () -> Void
    
    var body: some View {
        Button(action: add) {
            HStack {
                Image(systemName: "plus.circle.fill")
                Text("Add Item")
            }
            .font(.headline)
            .foregroundColor(.white)
            .padding()
            .background(Color.blue)
            .cornerRadius(10)
        }
    }
}
