//
//  Post.swift
//  DonationUI
//
//  Created by Brenda Saavedra Cantu on 28/09/23.
//

import SwiftUI
import Foundation

struct Post {
    let id = UUID()
    let user: User
    let date: Date
    let caption: String?
    let image: Image?
    let likes: Int
    let comments: Int
    let iLikeIt: Bool
    
    var timeString: String {
        return "\(date.timestampString()) ago"
    }
}

extension Post {
    static let MOCK_POSTS = [
        Post(user: User.MOCK_USERS[1], date: Date(month: 9, day: 28, year: 2023), caption: "Look what amazed me with AI create a mix of pop art.", image: Image("fridaNike"), likes: 65, comments: 12, iLikeIt: false),
        Post(user: User.MOCK_USERS[2], date: Date(month: 9, day: 26, year: 2023), caption: "I will start uploading my things here 1 week ahead. What do you think?", image: nil, likes: 43, comments: 8, iLikeIt: true),
        Post(user: User.MOCK_USERS[3], date: Date(month: 9, day: 22, year: 2023), caption: "We need more tech children in the world.", image: Image("children"), likes: 29, comments: 30, iLikeIt: false),
        Post(user: User.MOCK_USERS[4], date: Date(month: 9, day: 20, year: 2023), caption: "Understanding the various styles of leadership great characters represent can provide valuable lessons for entrepreneurs.", image: Image("starTrek"), likes: 47, comments: 33, iLikeIt: true),
        Post(user: User.MOCK_USERS[5], date: Date(month: 9, day: 19, year: 2023), caption: "My Latest Work ☕.", image: Image("work"), likes: 51, comments: 6, iLikeIt: false)
    ]
}
