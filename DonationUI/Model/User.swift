//
//  User.swift
//  DonationUI
//
//  Created by Brenda Saavedra Cantu on 28/09/23.
//

import Foundation

struct User {
    let id = UUID()
    let name: String
    let image: String
    let isMine: Bool
}

extension User {
    static let MOCK_USERS = [
        User(name: "Ashley", image: "woman1", isMine: true),
        User(name: "Kinan", image: "woman2", isMine: false),
        User(name: "Greyhold", image: "man1", isMine: false),
        User(name: "Nolan", image: "man2", isMine: false),
        User(name: "Daphne", image: "woman3", isMine: false),
        User(name: "Allan", image: "man3", isMine: false),
        User(name: "Leo", image: "man4", isMine: false),
        User(name: "Cleo", image: "woman4", isMine: false),
        User(name: "Nora", image: "woman5", isMine: false),
        User(name: "Matt", image: "man5", isMine: false),
    ]
}
