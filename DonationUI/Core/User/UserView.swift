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
    
    @State var amountTxt: String = "$0.00"
    @State var amount: Double = 0
    @State var selectedSegment: Int = 0
    
    private let widthScreen: CGFloat = UIScreen.main.bounds.width
    private let heightScreen: CGFloat = UIScreen.main.bounds.height
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: false){
            VStack() {
                Header
                
                UserDetails
                
                OverviewSection
            }
        }
        .ignoresSafeArea(.all)
    }
}

//MARK: - Components
extension UserView {
    
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
                CircularButton(image: "chevron.left", action: ())
                
                Spacer()
                
                CircularButton(image: "square.and.arrow.up", action: ())
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
                    
                    CustomButton(title: "Follow", backgroundColor: Color.darkButton, hasBorder: true, action: (), iconImage: nil, buttonSize: .medium)
                }
            }
            .padding(.horizontal, 30)
            
            Text(user.details)
                .fixedSize(horizontal: false, vertical: true)
                .font(.footnote)
                .padding(.horizontal, 30)
                .foregroundColor(Color.darkGray)
            
            Spacer()
        }
        .frame(width: UIScreen.main.bounds.width, height: 200)
        .background(.white)
    }
    
    var OverviewSection: some View {
        VStack(alignment:.leading) {
            CustomSegmentedControl(selectedSegment: $selectedSegment, segments: ["Overview", "Posts", "Membership"])
                .padding(.horizontal, 40)
            
            SupportContainer
                .padding(.horizontal, 20)
                .padding(.top, 20)
        }
        .padding(.vertical, 40)
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
    
    var SupportContainer: some View {
        VStack(alignment: .leading, spacing: 20){
            Text("Support \(user.name)")
                .font(.title3)
                .fontWeight(.semibold)
            
            Text("Prepare your money")
                .font(.subheadline)
            
            HStack {
                CustomButton(title: "$1", backgroundColor: Color.lightButton, hasBorder: false, action: (), iconImage: nil, buttonSize: .small)
                
                CustomButton(title: "$10", backgroundColor: Color.lightButton, hasBorder: false, action: (), iconImage: nil, buttonSize: .small)
                
                CustomButton(title: "$15", backgroundColor: Color.lightButton, hasBorder: false, action: (), iconImage: nil, buttonSize: .small)
                
                TextField("$0.00", text: $amountTxt)
                    .padding()
                    .background(Color.ligthGray)
                    .cornerRadius(12)
            }
            
            Spacer()
            
            CustomButton(title: "Take my money", backgroundColor: Color.lightButton, hasBorder: false, action: (), iconImage: "moneyBtn", buttonSize: .large)

        }
        .padding(.horizontal, 20)
        .padding(.vertical, 20)
        .background(.white)
        .clipShape(RoundedRectangle(cornerRadius: 12))
    }
}

// MARK: Preview
#Preview {
    UserView(user: User.MOCK_USERS[1])
}
