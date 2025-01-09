//
//  Contact.swift
//  NewContactApp
//
//  Created by Muralidhar reddy Kakanuru on 1/9/25.
//

import Foundation
import SwiftUICore

struct Contact: Identifiable {
    let id = UUID()
    var profileImage: Image?
    var firstName: String
    var lastName: String
    var company: String
    var phoneNumbers: [String]
    var emails: [String]
    var pronouns: [String]
    var url: [String]
    var address: [String]
    var birthday: [String]
    var date: [String]
    var relatedName: [String]
    var socialProfile: [String]
    var instaMessage: [String]
    var verification: [String]
}
