//
//  DynamicFieldList.swift
//  NewContactApp
//
//  Created by Muralidhar reddy Kakanuru on 1/9/25.
//


//import SwiftUI
//
//struct DynamicFieldList: View {
//    var label: String
//    @Binding var items: [String]
//
//    var body: some View {
//        Section {
//            ForEach(items.indices, id: \.self) { index in
//                
//                HStack {
//                    if index != 0 {
//                    Button(action: {
//                        items.remove(at: index)
//                    }) {
//                        Image(systemName: "minus.circle.fill")
//                            .foregroundColor(.red)
//                        
//                    }
//                    
//                }
//
//                    Button(label.capitalized) {
//                    }
//                    TextField("Enter \(label)", text: $items[index])
//                }
//            }
//            
//            .swipeActions(edge: .trailing) {
//                                // Enable swipe-to-delete only for rows other than the first
//                                if index != 0 {
//                                    Button(role: .destructive) {
//                                        items.remove(at: index)
//                                    } label: {
//                                        Label("Delete", systemImage: "trash")
//                                    }
//                                }
//                            }
//
//            
//            Button(action: {
//                items.append("")
//            }) {
//                HStack {
//                    Image(systemName: "plus.circle.fill")
//                        .foregroundColor(.green)
//                    Text("add \(label)")
//                }
//            }
//        }
//    }
////    private func deleteRow(at offsets: IndexSet) {
////           let filteredOffsets = offsets.filter { $0 != 0 }
////           items.remove(atOffsets: IndexSet(filteredOffsets))
////       }
//}




import SwiftUI

struct DynamicFieldList: View {
    var label: String
    @Binding var items: [String]

    var body: some View {
        Section {
            ForEach(items.indices, id: \.self) { index in
                HStack {
                    if index != 0 {
                        Button(action: {
                            items.remove(at: index)
                        }) {
                            Image(systemName: "minus.circle.fill")
                                .foregroundColor(.red)
                        }
                    }

                    Button(label.capitalized) {
                    }
                    Image(systemName: "chevron.right")
                        .fontWeight(.light)
                    TextField("Enter \(label)", text: $items[index])
                        
                }
                .swipeActions(edge: .trailing) {

                    if index != 0 {
                        Button(role: .destructive) {
                            items.remove(at: index)
                        } label: {
                            Label("Delete", systemImage: "trash")
                        }
                    }
                }
            }

            Button(action: {
                items.append("")
            }) {
                HStack {
                    Image(systemName: "plus.circle.fill")
                        .foregroundColor(.green)
                    Text("Add \(label.capitalized)")
                }
            }
        }
    }
}


#Preview {
    ContentView()
}
