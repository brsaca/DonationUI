//
//  Activity.swift
//  DonationUI
//
//  Created by Brenda Saavedra Cantu on 02/10/23.
//

import Foundation

enum Action {
    case suscription
    case donate
    case post
    case follow
    
    var detail: String {
        switch self {
        case .follow: return " started follow your activity"
        case .donate: return "give you a money "
        case .post: return "uploaded info extra"
        case .suscription: return " suscribe to your profile"
        }
    }
}

struct Activity {
    let id = UUID()
    let follower: Follower
    let amount: Double
    let date: Date
    let action: Action
    
    var timeString: String {
        return "\(date.timestampString()) ago"
    }
    
    var amountString: String {
        let formatter = NumberFormatter()
        formatter.maximumFractionDigits = 2
        formatter.minimumFractionDigits = 0
        formatter.currencyCode = "USD"
        formatter.numberStyle = .currency
        return formatter.string(for: amount) ?? "?"
    }
    
}
extension Activity {
    static let MOCK_ACTIVITIES = [
        Activity(follower: Follower.MOCK_FOLLOWERS[0], amount: 15, date: Date(month: 9, day: 22, year: 2023), action: .donate),
        Activity(follower: Follower.MOCK_FOLLOWERS[1], amount: 0, date: Date(month: 9, day: 10, year: 2023), action: .follow),
        Activity(follower: Follower.MOCK_FOLLOWERS[2], amount: 0, date: Date(month: 9, day: 4, year: 2023), action: .post),
        Activity(follower: Follower.MOCK_FOLLOWERS[3], amount: 10, date: Date(month: 8, day: 29, year: 2023), action: .donate),
        Activity(follower: Follower.MOCK_FOLLOWERS[4], amount: 0, date: Date(month: 8, day: 23, year: 2023), action: .suscription),
    ]
}
