//
//  UserActivity.swift
//  DonationUI
//
//  Created by Brenda Saavedra Cantu on 02/10/23.
//

import SwiftUI

struct UserActivity: View {
    // MARK: View Properties
    let user: User
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("Recent Activity")
                .font(.title3)
                .fontWeight(.semibold)
                .padding(.bottom, 20)
            
            LazyVStack {
                ForEach(user.activities, id:\.id) { activity in
                    UserActivityRow(activity: activity)
                }
            }
        }
    }
}

// MARK: - Previews
#Preview {
    UserActivity(user: User.MOCK_USERS[0])
}
