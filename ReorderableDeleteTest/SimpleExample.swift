//
//  SimpleExample.swift
//  ReorderableDeleteTest
//
//  Created by Jimmy Hooker on 9/29/24.
//

import SwiftUI
import Reorderable

struct SimpleExample: View {
    @State private var data = [
        Sample(color: UIColor.systemBlue, number: 1, height: 200),
        Sample(color: UIColor.systemGreen, number: 2, height: 100),
        Sample(color: UIColor.systemGray, number: 3, height: 300)
    ]
    
    var body: some View {
        VStack {
            ReorderableVStack(data, onMove: move) { sample in
                SampleView(sample: sample, onDelete: {
                    delete(sample)
                })
            }
            .padding()
            
            Spacer()
            
            AddButton(add: add)
                .padding()
        }
    }
    
    // Handle moving items
    private func move(from: Int, to: Int) {
        withAnimation {
            data.move(fromOffsets: IndexSet(integer: from),
                      toOffset: (to > from) ? to + 1 : to)
        }
    }
    
    // Handle deleting an item
    private func delete(_ sample: Sample) {
        if let index = data.firstIndex(of: sample) {
            withAnimation {
                data.remove(at: index)
            }
        }
    }
    
    // Handle adding a new item
    private func add() {
        let newNumber = (data.map { $0.number }.max() ?? 0) + 1
        let newSample = Sample(color: UIColor.random(), number: newNumber, height: CGFloat.random(in: 100...300))
        withAnimation {
            data.append(newSample)
        }
    }
}

struct SimpleExample_Previews: PreviewProvider {
    static var previews: some View {
        SimpleExample()
    }
}
