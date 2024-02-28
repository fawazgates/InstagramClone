//
//  User.swift
//  InstagramClone
//
//  Created by User on 29/02/24.
//

import Foundation

struct User: Identifiable, Codable, Hashable {
    let id: String
    let username: String
    let profileImageUrl: String
    let fullname: String?
    let bio: String?
    let email: String
}

extension User {
    static var MOCK_USERS: [User] = [
        .init(id: NSUUID().uuidString, username: "fawaz", profileImageUrl: "fawaz", fullname: "fawaz1", bio: "hallo se1mua", email: "dela@up1i.edu"),
        .init(id: NSUUID().uuidString, username: "dela", profileImageUrl: "dela", fullname: nil, bio: "hallo semua", email: "dela@upi.edu"),
        .init(id: NSUUID().uuidString, username: "della2", profileImageUrl: "della", fullname: "della", bio: "hallo semua", email: "dela@upi.edu"),
        .init(id: NSUUID().uuidString, username: "della3", profileImageUrl: "della", fullname: "della", bio: "hallo semua", email: "dela@upi.edu")
    ]
}
