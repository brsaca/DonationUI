//
//  Follower.swift
//  DonationUI
//
//  Created by Brenda Saavedra Cantu on 02/10/23.
//

import Foundation

struct Follower {
    let id = UUID()
    let fullName: String
    let image: String
}

extension Follower {
    static let MOCK_FOLLOWERS = [
        Follower(fullName: "Sheila Llamas", image: "woman3"),
        Follower(fullName: "Julio Dwain", image: "man4"),
        Follower(fullName: "Yukari Kom", image: "woman4"),
        Follower(fullName: "Leo Saenz", image: "man5"),
        Follower(fullName: "Anahi Towers", image: "woman5"),
    ]
}
