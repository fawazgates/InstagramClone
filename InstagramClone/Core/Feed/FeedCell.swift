//
//  FeedCell.swift
//  InstagramClone
//
//  Created by User on 28/02/24.
//

import SwiftUI

struct FeedCell: View {
    let post: Post
    
    var body: some View {
        VStack {
            
            //MARK: IMAGE DAN USERNAME
            
            HStack {
                if let user = post.user {
                    Image(user.profileImageUrl)
                        .resizable()
                        .scaledToFill()
                        .frame(width: 40, height: 40)
                        .clipShape(Circle())
                    
                    Text(user.username)
                        .font(.footnote)
                        .fontWeight(.semibold)
                }

                Spacer()
            }
            .padding(.leading, 8)
            
            //MARK: POST IMAGE
            
            Image(post.imageUrl)
                .resizable()
                .scaledToFill()
                .frame(height: 400)
                .clipShape(Rectangle())
            
            //MARK: ACTION BUTTOMS
            
            HStack {
                HStack(spacing: 16) {
                    Button {
                        print("Like posts")
                    } label: {
                        Image(systemName: "heart")
                            .imageScale(.large)
                    }
                    Button {
                        print("Comment on post")
                    } label: {
                        Image(systemName: "bubble.right")
                            .imageScale(.large)
                    }
                    Button {
                        print("Shere post")
                    } label: {
                        Image(systemName: "paperplane")
                            .imageScale(.large)
                    }
                    Spacer()
                }
                .padding(.leading, 8)
                .padding(.top, 4)
                .foregroundColor(.black)
            }
            
            //MARK: LIKES LABEL
            
            Text("\(post.likes) likes")
                .font(.footnote)
                .fontWeight(.semibold)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.leading, 10)
                .padding(.top, 1)
            
            //MARK: CAPTION LABEL
            
            HStack {
                Text("\(post.user?.username ?? "") ").fontWeight(.semibold) +
                Text(post.caption)
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            .font(.footnote)
            .padding(.leading, 10)
            .padding(.top, 1)
            
            Text("1h ago")
                .font(.footnote)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.leading, 10)
                .padding(.top, 1)
                .foregroundColor(.gray)
        }
    }
}

#Preview {
    FeedCell(post: Post.MOCK_POST[3])
}
