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
    let fullName: String
    let image: String
    let isMine: Bool
}

extension User {
    static let MOCK_USERS = [
        User(name: "Ashley", fullName: "Ashley Lors", image: "woman1", isMine: true),
        User(name: "Kinan", fullName: "Kinan Manopa", image: "woman2", isMine: false),
        User(name: "Greyhold", fullName: "Greyhold Reaves", image: "man1", isMine: false),
        User(name: "Nolan", fullName: "Nolan DiCaprio", image: "man2", isMine: false),
        User(name: "Daphne", fullName: "Daphne Trousers", image: "woman3", isMine: false),
        User(name: "Allan", fullName: "Allan Palma", image: "man3", isMine: false),
        User(name: "Leo", fullName: "Leo Archuf", image: "man4", isMine: false),
        User(name: "Cleo", fullName: "Cleo Moran", image: "woman4", isMine: false),
        User(name: "Nora", fullName: "Nora Williams", image: "woman5", isMine: false),
        User(name: "Matt", fullName: "Matt Straleinki", image: "man5", isMine: false),
    ]
}
