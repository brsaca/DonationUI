//
//  ProfileView.swift
//  DonationUI
//
//  Created by Brenda Saavedra Cantu on 02/10/23.
//

import SwiftUI

struct ProfileView: View {
    // MARK: View Properties
    let user: User
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack(alignment: .leading) {
                // User Stats
                UserStats(user: user)
                
                // Montly Earning
                userEarnings
                
                // Recent Activity
                UserActivity(user: user)
                    .padding(.horizontal, 30)
                    .padding(.vertical, 30)
            }
        }
        .background(.white)
        .frame(width: .infinity, height: .infinity)
        .clipShape(
            .rect(
                topLeadingRadius: 30,
                bottomLeadingRadius: 0,
                bottomTrailingRadius: 0,
                topTrailingRadius: 30
            )
        )
        .ignoresSafeArea(.all)
    }
}

// MARK: - Components
extension ProfileView {
    var userEarnings: some View {
        VStack(alignment: .leading, spacing: 30) {
            HStack {
                Text("Montly Earning")
                    .font(.title3)
                    .fontWeight(.semibold)
                
                Spacer()
                
                Button {
                    
                } label: {
                    Text("See All Stadistics")
                        .font(.footnote)
                        .fontWeight(.semibold)
                        .accentColor(Color.darkButton)
                }
            }
            .padding(.top, 30)
            .padding(.horizontal, 30)
            
            HStack {
                StatsContainer(stats: .membership, value: "$\(user.earnings.membership)")
                
                Spacer()
                
                StatsContainer(stats: .shop, value: "$\(user.earnings.shop)")
                
                Spacer()
                
                StatsContainer(stats: .donations, value: "$\(user.earnings.donation)")
            }
            .padding(.horizontal, 30)
            .padding(.bottom, 30)
        }
        .background(Color.ligthGray)
        .clipShape(
            RoundedRectangle(cornerRadius: 16)
        )
        .padding(.horizontal, 20)
    }
}

// MARK: - Previews
#Preview {
    ProfileView(user: User.MOCK_USERS[0])
}
