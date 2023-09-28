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
                    Button {
                        
                    } label: {
                        Image(systemName: "bell.fill")
                            .resizable()
                            .foregroundColor(Color.darkGray)
                            .frame(width: 24, height: 24)
                    }
                    .padding()
                    .foregroundColor(.white)
                    .background(.white)
                    .clipShape(Circle())
                    
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
            ScrollView (.vertical) {
                if currentSection == .feeds {
                    FeedsView()
                } else if currentSection == .profile {
                    Text("Profile")
                } else {
                    Text("Under construction")
                }
            }
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
