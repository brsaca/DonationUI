//
//  UserActivityRow.swift
//  DonationUI
//
//  Created by Brenda Saavedra Cantu on 02/10/23.
//

import SwiftUI

struct UserActivityRow: View {
    // MARK: View Properties
    let activity: Activity
    
    var body: some View {
        HStack(alignment: .top, spacing: 10) {
            Image(activity.follower.image)
                .resizable()
                .scaledToFill()
                .frame(width: 50, height: 50)
                .clipShape(Circle())
            
            VStack(alignment: .leading) {
                if activity.amount > 0 {
                    Text(activity.follower.fullName)
                        .fontWeight(.bold) +
                    Text(" \(activity.action.detail)")
                    +
                    Text(activity.amountString)
                        .fontWeight(.bold)
                } else {
                    Text(activity.follower.fullName)
                        .fontWeight(.bold) +
                    Text(" \(activity.action.detail)")
                }
                
                Text(activity.timeString)
                    .foregroundColor(Color.darkGray)
            }
            
            Spacer()
            
        }
    }
}

// MARK: - Previews
#Preview {
    UserActivityRow(activity: Activity.MOCK_ACTIVITIES[0])
}
