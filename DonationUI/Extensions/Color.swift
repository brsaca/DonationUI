//
//  Color.swift
//  DonationUI
//
//  Created by Brenda Saavedra Cantu on 28/09/23.
//

import SwiftUI

extension Color {
    static let profileBkg = LinearGradient(colors: [Color("topGreen"), Color("lightGreen")], startPoint: .top, endPoint: .bottom)
    static let lightButton = Color("lightGreen")
    static let darkButton = Color("darkGreen")
    static let purpleBorder = Color("purple")
    static let darkGray = Color("darkGray")
    static let ligthGray = Color("ligthGray")
    static let gradientUserColor = LinearGradient(
        colors: [.darkButton, .purpleBorder],
        startPoint: .topLeading,
        endPoint: .bottomTrailing)
}
