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
                        NavigationLink(
                            destination: UserView(user: user)
                                .navigationBarTitle("")
                                .navigationBarHidden(true)
                                .navigationBarBackButtonHidden(true)
                        ){
                                UserPhoto(user: user, presentation: .feed)
                            }
                    }
                }
                .frame(height: 85)
            }
            .padding(.top, 10)
            .padding(.leading, 40)
            .padding(.bottom, 30)
            
            // MARK: List Feed
            LazyVStack(spacing:20) {
                ForEach(Post.MOCK_POSTS, id: \.id) { post in
                    FeedCell(post: post)
                }
            }
            .padding(.horizontal, 20)
        }
        
        .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height - 160)
        .background(.clear)
    }
}

struct FeedsView_Previews: PreviewProvider {
    static var previews: some View {
        FeedsView()
    }
}
