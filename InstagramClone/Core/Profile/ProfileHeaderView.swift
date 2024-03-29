//
//  ProfileHeaderView.swift
//  InstagramClone
//
//  Created by User on 29/02/24.
//

import SwiftUI

struct ProfileHeaderView: View {
    let user: User
    
    var body: some View {
        VStack(spacing: 20) {
            
                
                // MARK: PIC AND STATS
                
                HStack {
                    Image(user.profileImageUrl)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 80, height: 80)
                        .clipShape(Circle())
                    
                    Spacer()
                    
                    HStack(spacing: 8) {
                        UserStatView(value: 3, title: "Posts")
                        UserStatView(value: 12, title: "Followers")
                        UserStatView(value: 100, title: "Following")
                    }
                }
                     
                .padding(.horizontal)
                    
                    
                    // MARK: NAME AND BIO
                    
                    VStack(alignment: .leading, spacing: 4) {
                        if let fullname = user.fullname {
                            Text(fullname)
                                .font(.footnote)
                                .fontWeight(.semibold)
                        }
                        if let bio = user.bio {
                            Text(bio)
                                .font(.footnote)
                        }
                        }
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.horizontal)
                
                        // MARK: ACTION BUTTON
                        
                        Button {
                        } label: {
                            Text("Edit Profile")
                                .font(.subheadline)
                                .fontWeight(.semibold)
                                .frame(width: 360, height: 32)
                                .foregroundColor(.black)
                                .overlay {
                                    RoundedRectangle(cornerRadius: 6)
                                        .stroke(Color.gray, lineWidth: 1)
                                }
                        }
                        
                        Divider()
                    }
        }
    }


#Preview {
    ProfileHeaderView(user: User.MOCK_USERS[0])
}
