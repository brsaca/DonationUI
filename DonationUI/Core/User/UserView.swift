//
//  UserView.swift
//  DonationUI
//
//  Created by Brenda Saavedra Cantu on 29/09/23.
//

import SwiftUI

struct UserView: View {
    // MARK: View Properties
    let user: User
    
    @State var selectedSegment: Int = 0
    private let widthScreen: CGFloat = UIScreen.main.bounds.width
    private let heightScreen: CGFloat = UIScreen.main.bounds.height
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: false){
            VStack() {
                Header
                
                UserDetails
                
                SupportSection
            }
        }
        .ignoresSafeArea(.all)
    }
}

//MARK: - Components
extension UserView {
    // MARK: Header
    var Header: some View {
        ZStack() {
            // Header
            Image("work")
                .resizable()
                .scaledToFill()
                .frame(width:widthScreen, height: 300)
                .clipped()
            
            // NavBar
            HStack {
                CircularButton(image: "chevron.left")
                
                Spacer()
                
                CircularButton(image: "square.and.arrow.up")
            }
            .frame(width:widthScreen - 70, height: 80)
            .offset(y: -70)
            
            // RoundBorder
            Rectangle()
                .frame(width: widthScreen, height: 50)
                .foregroundColor(.white)
                .clipShape(
                    .rect(
                        topLeadingRadius: 30,
                        bottomLeadingRadius: 0,
                        bottomTrailingRadius: 0,
                        topTrailingRadius: 30
                    )
                )
                .offset(y: 125)
            
            // UserPhoto
            UserPhoto(user: user, presentation: .detail)
                 .padding(.trailing, widthScreen - 140)
                 .padding(.top, 190)
        }
    
    }
    
    
    // MARK: User Details
    var UserDetails: some View {
        VStack(alignment: .leading, spacing: 20) {
            Group {
                Text(user.fullName)
                    .font(.title3)
                    .fontWeight(.semibold)
                    .foregroundColor(.black)
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                HStack(spacing: 30) {
                    StatsContainer(stats: .supporters, value: "\(user.supporters)")
                    
                    StatsContainer(stats: .members, value: "\(user.members)")
                    
                    Button {
                        
                    } label: {
                        Text("Follow")
                            .font(.subheadline)
                            .fontWeight(.bold)
                            .foregroundColor(.black)
                    }
                    .frame(width: 100, height: 46)
                    
                    .background(.white)
                    .clipShape(RoundedRectangle(cornerRadius: 12))
                    .overlay(
                        RoundedRectangle(cornerRadius: 12).stroke(.black, lineWidth: 2)
                    )
                    
                }
            }
            .padding(.horizontal, 30)
            
            Text(user.details)
                .font(.footnote)
                .padding(.horizontal, 30)
                .foregroundColor(Color.darkGray)
            
            Spacer()
        }
        .frame(width: UIScreen.main.bounds.width, height: 200)
        .background(.white)
    }
    
    // MARK: Support Section
    var SupportSection: some View {
        VStack {
            CustomSegmentedControl(selectedSegment: $selectedSegment, segments: ["Overview", "Posts", "Membership"])
                .padding(.top, 20)
                .padding(.horizontal, 40)
            Spacer()
        }
        .frame(height: heightScreen - 500)
        .background(Color.ligthGray)
        .clipShape(
            .rect(
                topLeadingRadius: 30,
                bottomLeadingRadius: 0,
                bottomTrailingRadius: 0,
                topTrailingRadius: 30
            )
        )
    }
}

// MARK: Preview
#Preview {
    UserView(user: User.MOCK_USERS[1])
}
