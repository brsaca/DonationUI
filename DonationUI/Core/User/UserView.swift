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
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: false){
            ZStack() {
                // MARK: Header
                Image("work")
                    .resizable()
                    .scaledToFill()
                    .frame(width:widthScreen, height: 300)
                    .clipped()
                
                HStack {
                    CircularButton(image: "chevron.left")
                    
                    Spacer()
                    
                    CircularButton(image: "square.and.arrow.up")
                }
                .frame(width:widthScreen - 70, height: 80)
                .offset(y: -70)
                
                // MARK: User Details
                VStack(alignment: .leading, spacing: 20) {
                    Group {
                        Text(user.fullName)
                            .font(.title3)
                            .fontWeight(.semibold)
                            .foregroundColor(.black)
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding(.top, 60)
                        
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
                .frame(width: UIScreen.main.bounds.width, height: 340)
                .background(.white)
                .clipShape(
                    .rect(
                        topLeadingRadius: 30,
                        bottomLeadingRadius: 0,
                        bottomTrailingRadius: 0,
                        topTrailingRadius: 30
                    )
                )
                .offset(y: 250)
                
                // MARK: User Photo
                UserPhoto(user: user, presentation: .detail)
                    .padding(.trailing, widthScreen - 140)
                    .padding(.top, 170)
                
                // MARK: Segmented Control & Support Section
                VStack {
                    CustomSegmentedControl(selectedSegment: $selectedSegment, segments: ["Overview", "Posts", "Membership"])
                        .padding(.top, 20)
                        .padding(.horizontal, 40)
                    Spacer()
                }
                .frame(width: widthScreen, height: UIScreen.main.bounds.height - 520)
                .background(Color.ligthGray)
                .clipShape(
                    .rect(
                        topLeadingRadius: 30,
                        bottomLeadingRadius: 0,
                        bottomTrailingRadius: 0,
                        topTrailingRadius: 30
                    )
                )
                .offset(y: 520)
            }
        }
        .ignoresSafeArea()
    }
}

#Preview {
    UserView(user: User.MOCK_USERS[1])
}
