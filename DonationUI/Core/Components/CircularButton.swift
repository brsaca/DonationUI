//
//  CircularButton.swift
//  DonationUI
//
//  Created by Brenda Saavedra Cantu on 29/09/23.
//

import SwiftUI

struct CircularButton: View {
    // MARK: View Properties
    let image: String
    
    var body: some View {
        Button {
            
        } label: {
            Image(systemName: image)
                .resizable()
                .foregroundColor(Color.darkGray)
                .scaledToFit()
                .frame(width: 24, height: 24)
        }
        .padding()
        .foregroundColor(.white)
        .background(.white)
        .clipShape(Circle())
    }
}

#Preview {
    CircularButton(image: "chevron.left")
}
