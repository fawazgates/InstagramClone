//
//  CurrentUserProfileView.swift
//  InstagramClone
//
//  Created by User on 29/02/24.
//

import SwiftUI

struct CurrentUserProfileView: View {
    
    let user: User
    
    var posts: [Post] {
        return Post.MOCK_POST.filter({ $0.user?.username == user.username})
    }
    
    var body: some View {
        NavigationStack {
            ScrollView {
                
                // MARK: HEADER
                
                ProfileHeaderView(user: user)
                        
                // MARK: POST GRID VIEW
                
                PostGridView(posts: posts)
            }
            .navigationTitle("Profile")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button {
                    } label: {
                        Image(systemName: "line.3.horizontal")
                            .foregroundColor(.black)
                    }
                }
            }
        }
    }
}

#Preview {
    CurrentUserProfileView(user: User.MOCK_USERS[0])
}
