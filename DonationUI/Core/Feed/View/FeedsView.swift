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
        ZStack(alignment: .bottom) {
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
                .padding(.top, 40)
                .padding(.leading, 40)
                
                // MARK: List Feed
            }
            
            Button {
                
            } label: {
                Image(systemName: "plus")
                    .resizable()
                    .fontWeight(.light)
                    .frame(width: 25, height: 25)
                    .foregroundColor(.black)
            }
            .frame(width: 90, height: 90)
            .background(Color.darkButton)
            .clipShape(RoundedRectangle(cornerRadius: 30))
            .overlay(
                RoundedRectangle(cornerRadius: 30).stroke(.black, lineWidth: 2)
            )
            .offset(x: 90, y: -100)
            
        }
        .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
        .padding(.top)
        .edgesIgnoringSafeArea(.all)
        .background(Color.ligthGray)
    }
}

struct FeedsView_Previews: PreviewProvider {
    static var previews: some View {
        FeedsView()
    }
}
