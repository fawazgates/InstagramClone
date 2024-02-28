//
//  Post.swift
//  InstagramClone
//
//  Created by User on 29/02/24.
//

import Foundation

struct Post: Identifiable, Codable, Hashable {
    let id: String
    let owenerUid: String
    let caption: String
    let likes: Int
    let imageUrl: String
    let timestamp: Date
    let user: User?
}

extension Post {
    static var MOCK_POST: [Post] = [
        .init(id: NSUUID().uuidString,
              owenerUid: NSUUID().uuidString,
              caption: "This is some text caption for now",
              likes: 123,
              imageUrl: "fawaz",
              timestamp: Date(),
              user: User.MOCK_USERS[0]
             ),
        .init(id: NSUUID().uuidString,
              owenerUid: NSUUID().uuidString,
              caption: "This is some text caption for now",
              likes: 123,
              imageUrl: "dela",
              timestamp: Date(),
              user: User.MOCK_USERS[3]
             ),
        .init(id: NSUUID().uuidString,
              owenerUid: NSUUID().uuidString,
              caption: "This is some text caption for now",
              likes: 123,
              imageUrl: "fawaz",
              timestamp: Date(),
              user: User.MOCK_USERS[2]
             ),
        .init(id: NSUUID().uuidString,
              owenerUid: NSUUID().uuidString,
              caption: "This is some text caption for now",
              likes: 123,
              imageUrl: "dela",
              timestamp: Date(),
              user: User.MOCK_USERS[1]
             ),
    ]
}
