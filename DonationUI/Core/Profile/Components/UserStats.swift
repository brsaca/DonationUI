//
//  UserStats.swift
//  DonationUI
//
//  Created by Brenda Saavedra Cantu on 02/10/23.
//

import SwiftUI

struct UserStats: View {
    // MARK: View Properties
    let user: User
    
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            userPhotoAndName
            
            userNumbers
        }
        .background(Color.profileBkg)
        .clipShape(
            RoundedRectangle(cornerRadius: 16)
        )
        .padding(.horizontal, 20)
        .padding(.vertical, 20)
    }
}

// MARK: Components
extension UserStats {
    var userPhotoAndName: some View {
        HStack(spacing: 15) {
            UserPhoto(user: user, presentation: .profile)
            
            VStack(alignment: .leading) {
                Text(user.fullName)
                    .font(.title3)
                    .fontWeight(.semibold)
                
                Button {
                    
                } label: {
                    HStack {
                        Text("See my page")
                            .font(.footnote)
                        
                        Image(systemName: "arrow.up.forward.app")
                    }
                    .padding(.horizontal, 10)
                    .padding(.vertical, 5)
                    .accentColor(Color.darkGray)
                    .background(.white)
                    .clipShape(RoundedRectangle(cornerRadius: 4))
                    .overlay(
                        RoundedRectangle(cornerRadius: 4).stroke(Color.ligthGray, lineWidth: 2)
                    )
                }
            }
            
            Spacer()
            
            Button {
                
            } label: {
                Image("toolsIcon")
                    .resizable()
                    .frame(width: 40, height: 40)
            }
        }
        .padding()
    }
    
    var userNumbers: some View {
        HStack {
            StatsContainer(stats: .followers, value: "\(user.followers)")
            
            Spacer()
            
            StatsContainer(stats: .supporters, value: "\(user.supporters)")
            
            Spacer()
            
            StatsContainer(stats: .members, value: "\(user.members)")
        }
        .padding(.horizontal, 30)
        .padding(.bottom, 40)
    }
}

// MARK: - Previews
#Preview {
    UserStats(user: User.MOCK_USERS[1])
}
