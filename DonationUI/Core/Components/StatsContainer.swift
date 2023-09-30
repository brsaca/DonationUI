//
//  StatsContainer.swift
//  DonationUI
//
//  Created by Brenda Saavedra Cantu on 29/09/23.
//

import SwiftUI

enum StatsCategory {
    case followers
    case supporters
    case members
    case membership
    case shop
    case donations
    
    var image: String {
        switch self {
        case .followers: return "followersIcon"
        case .supporters: return "supportersIcon"
        case .members: return "membersIcon"
        default: return ""
        }
    }
    
    var title: String {
        switch self {
        case .followers: return "Followers"
        case .supporters: return "Supporters"
        case .members: return "Members"
        case .donations: return "TakeMyMoney"
        case .shop: return "Shop"
        case .membership: return "Membership"
        }
    }
}

struct StatsContainer: View {
    // MARK: View Properties
    let stats: StatsCategory
    let value: String
    
    var body: some View {
        VStack(alignment: .leading, spacing: 5) {
            HStack{
                if !stats.image.isEmpty {
                    Image(stats.image)
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 40, height: 40)
                }
                Text(value)
                    .fontWeight(.bold)
                    .font(.title3)
            }
            Text(stats.title)
                .fontWeight(.medium)
                .font(.footnote)
                .foregroundColor(Color.darkGray)
        }
    }
}

// MARK: - Previews
#Preview("With Image") {
    StatsContainer(stats: .followers, value: "234")
}

#Preview("Only Value") {
    StatsContainer(stats: .membership, value: "$234.5")
}

