//
//  UserPhoto.swift
//  DonationUI
//
//  Created by Brenda Saavedra Cantu on 28/09/23.
//

import SwiftUI

enum Presentation {
    case feed
    case profile
}

enum ImageSize {
    case small
    case large
    
    var dimension: CGFloat {
        switch self {
        case .small: return 70
        case .large: return 100
        }
    }
}

struct UserPhoto: View {
    // MARK: View Properties
    let user: User
    let presentation: Presentation
    
    var userSize: ImageSize {
        return presentation == .feed ? ImageSize.small : ImageSize.large
    }
    
    var paintBorder: Bool {
        return presentation == .feed && !user.isMine
    }
    
    var body: some View {
        Image(user.image)
            .resizable()
            .scaledToFill()
            .frame(width: userSize.dimension, height: userSize.dimension)
            .clipShape(Circle())
            .overlay( Circle().stroke(.white, lineWidth: paintBorder ? 2 : 0) )
            .padding(paintBorder ? 3 : 0)
            .overlay( Circle().stroke(Color.gradientUserColor, lineWidth: paintBorder ? 2 : 0) )
    }
}

// MARK: - Previews
struct MyUserPhotoInFeed_Previews: PreviewProvider {
    static var previews: some View {
        UserPhoto(user: User.MOCK_USERS[0], presentation: .feed)
    }
}

struct UserPhotoInFeed_Previews: PreviewProvider {
    static var previews: some View {
        UserPhoto(user: User.MOCK_USERS[1], presentation: .feed)
    }
}

struct UserPhotoInProfile_Previews: PreviewProvider {
    static var previews: some View {
        UserPhoto(user: User.MOCK_USERS[0], presentation: .profile)
    }
}
