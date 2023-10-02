//
//  ContentView.swift
//  DonationUI
//
//  Created by Brenda Saavedra Cantu on 28/09/23.
//

import SwiftUI

enum AppSections {
    case feeds
    case messages
    case profile
    case empty
}

struct ContentView: View {
    
    // MARK: View Properties
    @State var currentSection: AppSections = .feeds
    
    var body: some View {
        NavigationView {
            VStack {
                ZStack(alignment: .topTrailing) {
                    // MARK: SectionButtons
                    ScrollView(.horizontal, showsIndicators: false){
                        HStack(spacing: 25) {
                            SectionButton(.feeds)
                            SectionButton(.messages)
                            SectionButton(.profile)
                            SectionButton(.empty)
                        }
                        .font(.title)
                        .padding(.leading, 30)
                        .padding(.top, 30)
                        .padding(.bottom, 30)
                    }
                    
                    // MARK: Bell Button
                    ZStack {
                        CircularButton(image: "bell.fill", action: ())
                        
                        Text(" ")
                            .background(.green)
                            .clipShape(Circle())
                            .offset(x: 12, y: -10)
                    }
                    .frame(width: 50, height: 50)
                    .padding(.trailing, 8)
                    .offset(x:-5, y: 20)
                }
                
                // MARK: Body
                if currentSection == .feeds {
                    ZStack(alignment: .bottom) {
                        FeedsView()
                        
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
                        .offset(x: 90, y: -90)
                    }
                } else if currentSection == .profile {
                    Text("Profile")
                } else {
                    Text("Under construction")
                }
            }
            .background(Color.ligthGray)
        }
    }
    
    // MARK: - SectionButton
    @ViewBuilder
    func SectionButton(_ appSection: AppSections) -> some View {
        Button {
            if appSection != AppSections.empty {
                currentSection = appSection
            }
        } label: {
            Text(String(describing: appSection).capitalized)
                .fontWeight(currentSection == appSection ? .bold : .regular)
                .foregroundColor(appSection == AppSections.empty ? .clear : (currentSection == appSection ? .black : Color.darkGray.opacity(0.5)))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
