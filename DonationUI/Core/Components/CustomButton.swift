//
//  CustomButton.swift
//  DonationUI
//
//  Created by Brenda Saavedra Cantu on 02/10/23.
//

import SwiftUI

enum ButtonSize {
    case small
    case medium
    case large
    
    var size: CGSize {
        switch self {
        case .small: return CGSize(width: 60, height: 46)
        case .medium: return CGSize(width: 100, height: 46)
        case .large: return CGSize(width: UIScreen.main.bounds.width - 60, height: 56)
        }
    }
}

struct CustomButton: View {
    // MARK: View Properties
    let title: String
    let backgroundColor: Color
    let hasBorder: Bool
    let action: ()
    let iconImage: String?
    let buttonSize: ButtonSize
    
    var body: some View {
        Button {
            action
        } label: {
            HStack {
                if let iconImage = iconImage {
                    Image(iconImage)
                        .resizable()
                        .frame(width: 20, height: 20)
                }
                Text(title)
                    .font(hasBorder ? .subheadline : .title3)
                    .fontWeight(.bold)
                    .foregroundColor(.black)
            }
        }
        .frame(width: buttonSize.size.width, height: buttonSize.size.height)
        .background(backgroundColor)
        .clipShape(RoundedRectangle(cornerRadius: 12))
        .overlay(
            RoundedRectangle(cornerRadius: 12).stroke(.black, lineWidth: hasBorder ? 2 : 0)
        )
    }
}

// MARK: - Previews
#Preview("Follow") {
    CustomButton(title: "Follow", backgroundColor: Color.darkButton, hasBorder: true, action: (), iconImage: nil, buttonSize: .medium)
}

#Preview("Take My Money") {
    CustomButton(title: "Take my money", backgroundColor: Color.lightButton, hasBorder: false, action: (), iconImage: "moneyBtn", buttonSize: .large)
}

#Preview("Amount") {
    CustomButton(title: "$15", backgroundColor: Color.lightButton, hasBorder: false, action: (), iconImage: nil, buttonSize: .small)
}
