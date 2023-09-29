//
//  FeedsView.swift
//  DonationUI
//
//  Created by Brenda Saavedra Cantu on 28/09/23.
//

import SwiftUI

struct FeedsView: View {
    
    // MARK: View Properties
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: false){
            // MARK: Users
            ScrollView(.horizontal, showsIndicators: false) {
                LazyHStack(spacing: 15) {
                    ForEach(User.MOCK_USERS, id: \.id) { user in
                        UserPhoto(user: user, presentation: .feed)
                    }
                }
                .frame(height: 80)
            }
            .padding(.top, 10)
            .padding(.leading, 40)
            
            // MARK: List Feed
        }
        
        .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height - 160)
        .background(Color.ligthGray)
    }
}

struct FeedsView_Previews: PreviewProvider {
    static var previews: some View {
        FeedsView()
    }
}
