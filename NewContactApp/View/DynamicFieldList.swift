//
//  DynamicFieldList.swift
//  NewContactApp
//
//  Created by Muralidhar reddy Kakanuru on 1/9/25.
//


import SwiftUI

struct DynamicFieldList: View {
    var label: String
    @Binding var items: [String]

    var body: some View {
        Section {
            ForEach(items.indices, id: \.self) { index in
                HStack {
                    Button(action: {
                        items.remove(at: index)
                    }) {
                        Image(systemName: "minus.circle.fill")
                            .foregroundColor(.red)
                    }
                    Button(label.capitalized) {
                    }
                    TextField("Enter \(label)", text: $items[index])
                }
            }
            Button(action: {
                items.append("")
            }) {
                HStack {
                    Image(systemName: "plus.circle.fill")
                        .foregroundColor(.green)
                    Text("add \(label)")
                }
            }
        }
    }
}
