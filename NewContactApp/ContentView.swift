//
//  ContentView.swift
//  NewContactApp
//
//  Created by Muralidhar reddy Kakanuru on 1/9/25.
//

//
import SwiftUI

struct ContentView: View {
    @State private var contacts: [Contact] = []
    @State private var profileImage: Image? = Image(systemName: "person.crop.circle.fill")
    @State private var firstName: String = ""
    @State private var lastName: String = ""
    @State private var company: String = ""
    @State private var phoneNumbers: [String] = []
    @State private var emails: [String] = []
    @State private var pronouns: [String] = []
    @State private var url: [String] = []
    @State private var address: [String] = []
    @State private var birthday: [String] = []
    @State private var date: [String] = []
    @State private var relatedName: [String] = []
    @State private var socialProfile: [String] = []
    @State private var insta: [String] = []
    @State private var verification: [String] = []
    @State private var showContactsList = false

    var body: some View {
        NavigationView {
            Form {
                
                Section {
                    VStack {
                        profileImage?
                            .resizable()
                            .frame(width: 100, height: 100)
                            .clipShape(Circle())
                            .overlay(Circle().stroke(Color.gray, lineWidth: 2))
                            .foregroundColor(.gray)

                        Button(action: {
                            
                        }) {
                            Text("Add Photo")
                                .font(.headline)
                                .foregroundColor(.black)
                        }
                        .padding(.top, 8)
                    }
                    .frame(maxWidth: .infinity, alignment: .center)
                }
                .listRowBackground(Color.clear)

                Section {
                    TextField("First name", text: $firstName)
                    TextField("Last name", text: $lastName)
                    TextField("Company", text: $company)
                }

                Section { DynamicFieldList(label: "phone", items: $phoneNumbers) }
                Section { DynamicFieldList(label: "email", items: $emails) }
                Section { DynamicFieldList(label: "pronouns", items: $pronouns) }
                Section { DynamicFieldList(label: "URL", items: $url) }
                Section { DynamicFieldList(label: "address", items: $address) }
                Section { DynamicFieldList(label: "birthday", items: $birthday) }
                Section { DynamicFieldList(label: "date", items: $date) }
                Section { DynamicFieldList(label: "related name", items: $relatedName) }
                Section { DynamicFieldList(label: "social profile", items: $socialProfile) }
                Section { DynamicFieldList(label: "insta message", items: $insta) }
                Section { DynamicFieldList(label: "verification", items: $verification) }

                Section {
                    NavigationLink(destination: Text("Ringtone")) {
                        HStack {
                            Text("Ringtone")
                            Spacer()
                            Text("Default").foregroundColor(.blue)
                        }
                    }
                }
                Section {
                    NavigationLink(destination: Text("Text Tone")) {
                        HStack {
                            Text("Text Tone")
                            Spacer()
                            Text("Default").foregroundColor(.blue)
                        }
                    }
                }

                Section {
                    Text("Notes")
                }

                Section {
                    Button("Add Field") {}
                }
            }
            .navigationBarTitle("New Contact", displayMode: .inline)
            .navigationBarItems(
                leading: Button("Cancel", action: { }),
                trailing: Button("Done", action: {
                    saveContact() 
                })
            )
            .sheet(isPresented: $showContactsList) {
                ContactListView(contacts: $contacts)
            }
        }
    }

    private func saveContact() {
        
        let newContact = Contact(
            profileImage: profileImage,
            firstName: firstName,
            lastName: lastName,
            company: company,
            phoneNumbers: phoneNumbers,
            emails: emails,
            pronouns: pronouns,
            url: url,
            address: address,
            birthday: birthday,
            date: date,
            relatedName: relatedName,
            socialProfile: socialProfile,
            instaMessage: insta,
            verification: verification
        )
        contacts.append(newContact)
        showContactsList = true
    }
}
#Preview {
    ContentView()
}
