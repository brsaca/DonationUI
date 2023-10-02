//
//  FeedCell.swift
//  DonationUI
//
//  Created by Brenda Saavedra Cantu on 28/09/23.
//

import SwiftUI

enum TypeIcon {
    case like
    case comment
    case share
    case more
    
    var image: String {
        switch self {
        case .like: return "suit.heart.fill"
        case .comment: return "ellipsis.bubble"
        case .share: return "square.and.arrow.up"
        case .more: return "ellipsis"
        }
    }
    
    var hasAmount: Bool {
        return self == .like || self == .comment
    }
}

struct FeedCell: View {
    // MARK: View Properties
    let post: Post
    
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            // MARK: Header
            HStack(spacing: 10) {
                UserPhoto(user: post.user, presentation: .post)
                
                VStack(alignment: .leading) {
                    Text(post.user.fullName)
                        .fontWeight(.semibold)
                    Text(post.timeString)
                        .foregroundColor(Color.darkGray)
                }
                .font(.footnote)
                
                Spacer()
            }
            .padding(.horizontal)
            
            // MARK: Info
            if let caption = post.caption {
                Text(caption)
                    .font(.footnote)
                    .fontWeight(.regular)
                    .padding(.horizontal)
            }
            
            // MARK: Image
            if let image = post.image {
                image
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: .infinity, height: 180)
                    .cornerRadius(3)
            }
            
            // MARK: Stats
            HStack(spacing: 6) {
                stats(icon: .like, value: post.likes)
                stats(icon: .comment, value: post.comments)
                stats(icon: .share)
                Spacer()
                stats(icon: .more)
            }
            .padding(.horizontal)
        }
        .padding(.horizontal, 10)
        .padding(.vertical, 10)
        .frame(width: .infinity)
        .background(.white)
        .cornerRadius(20)
    }
    
    // MARK: Stats
   @ViewBuilder
    func stats(icon: TypeIcon, value: Int = 0) -> some View {
        HStack {
            Group {
                if icon == .like && post.iLikeIt {
                    Image(systemName: icon.image)
                        .symbolRenderingMode(.palette)
                        .foregroundColor(Color.darkButton)
                } else{
                    Image(systemName: icon.image)
                }
            }
            .symbolRenderingMode(.hierarchical)
            .font(.system(size: 20))
            
            if icon.hasAmount {
                Text("\(value)")
                    .font(.system(size: 14))
            }
        }
        .foregroundColor(Color.darkGray)
        .padding(.horizontal, 15)
        .padding(.vertical, 15)
    }
}

// MARK: - Previews
struct FeedCellWithImage_Previews: PreviewProvider {
    static var previews: some View {
        FeedCell(post: Post.MOCK_POSTS[0])
    }
}

struct FeedCellWithoutImage_Previews: PreviewProvider {
    static var previews: some View {
        FeedCell(post: Post.MOCK_POSTS[1])
    }
}
