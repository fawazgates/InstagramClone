//
//  ProfileView.swift
//  InstagramClone
//
//  Created by User on 28/02/24.
//

import Foundation
import SwiftUI

struct ProfileView: View {
    
    let user: User
        
    var posts: [Post] {
        return Post.MOCK_POST.filter({ $0.user?.username == user.username})
    }
    
    var body: some View {
            ScrollView {
                
                // MARK: HEADER
                ProfileHeaderView(user: user)
                        
                // MARK: POST GRID VIEW
                
                PostGridView(posts: posts)
            }
            .navigationTitle("Profile")
            .navigationBarTitleDisplayMode(.inline)
            }
        }

#Preview {
    ProfileView(user: User.MOCK_USERS[0])
}
