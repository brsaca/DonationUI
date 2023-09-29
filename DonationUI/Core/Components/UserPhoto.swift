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
    case detail
    case post
}

enum ImageSize {
    case small
    case medium
    case large
    
    var dimension: CGFloat {
        switch self {
        case .small: return 35
        case .medium: return 50
        case .large: return 100
        }
    }
}

struct UserPhoto: View {
    // MARK: View Properties
    let user: User
    let presentation: Presentation
    
    var userSize: ImageSize {
        return presentation == .post ? .small : (presentation == .feed ? .medium : .large)
    }
    
    var paintBorder: Bool {
        return presentation == .feed && !user.isMine
    }
    
    var body: some View {
        VStack (spacing: 10){
            ZStack {
                Image(user.image)
                    .resizable()
                    .scaledToFill()
                    .frame(width: userSize.dimension, height: userSize.dimension)
                    .clipShape(Circle())
                    .overlay( Circle().stroke(.white, lineWidth: paintBorder ? 2 : 0) )
                    .padding(paintBorder ? 3 : 0)
                    .overlay( Circle().stroke(Color.gradientUserColor, lineWidth: paintBorder ? 2 : 0) )
                
                if presentation == Presentation.feed && user.isMine {
                    Image(systemName: "plus")
                        .resizable()
                        .fontWeight(.semibold)
                        .frame(width: 10, height: 10)
                        .foregroundColor(.white)
                        .frame(width: 20, height: 20)
                        .background(.black)
                        .clipShape(Circle())
                        .offset(x: 20, y: 18)
                }
            }
            
            if presentation == .feed {
                Text(user.name)
                    .font(.footnote)
            }
        }
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

struct UserPhotoInPost_Previews: PreviewProvider {
    static var previews: some View {
        UserPhoto(user: User.MOCK_USERS[1], presentation: .post)
    }
}

struct UserPhotoInProfile_Previews: PreviewProvider {
    static var previews: some View {
        UserPhoto(user: User.MOCK_USERS[0], presentation: .profile)
    }
}
