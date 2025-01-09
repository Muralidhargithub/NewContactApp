//
//  ContactListView.swift
//  NewContactApp
//
//  Created by Muralidhar reddy Kakanuru on 1/9/25.
//

import SwiftUI
struct ContactListView: View {
    @Binding var contacts: [Contact] // Pass the saved contacts

    var body: some View {
        NavigationView {
            List(contacts) { contact in
                VStack(alignment: .leading) {
                    Text("\(contact.firstName) \(contact.lastName)")
                        .font(.headline)
                    Text(contact.company)
                        .font(.subheadline)
                        .foregroundColor(.gray)
                }
            }
            .navigationTitle("Contacts")
        }
    }
}
