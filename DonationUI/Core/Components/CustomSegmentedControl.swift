//
//  CustomSegmentedControl.swift
//  DonationUI
//
//  Created by Brenda Saavedra Cantu on 29/09/23.
//

import SwiftUI

struct CustomSegmentedControl: View {
    // MARK: View Properties
    @Binding var selectedSegment: Int
    var segments: [String]
    let color = Color.white
    
    var body: some View {
        HStack(spacing: 0) {
            ForEach(segments.indices, id:\.self) { index in
                let isSelected = selectedSegment == index
                ZStack {
                    Rectangle()
                        .fill(Color.lightButton)
                    
                    Rectangle()
                        .fill(color)
                        .cornerRadius(10)
                        .padding(4)
                        .opacity(isSelected ? 1 : 0.01)
                        .onTapGesture {
                            withAnimation(.interactiveSpring(response: 0.2,
                                                             dampingFraction: 2,
                                                             blendDuration: 0.5)) {
                                selectedSegment = index
                            }
                        }
                }
                .overlay(
                    Text(segments[index])
                        .font(.system(size: 16))
                        .fontWeight(isSelected ? .bold : .regular)
                )
            }
        }
        .frame(height: 46)
        .cornerRadius(10)
    }
}

// MARK: Preview
#Preview {
    CustomSegmentedControl(selectedSegment: .constant(0), segments: ["Overview", "Posts", "Membership"])
}
