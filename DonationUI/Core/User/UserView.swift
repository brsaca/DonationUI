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
    
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

#Preview {
    UserView(user: User.MOCK_USERS[1])
}
