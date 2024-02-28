//
//  FeedView.swift
//  InstagramClone
//
//  Created by User on 28/02/24.
//

import SwiftUI

struct FeedView: View {
    var body: some View {
        NavigationStack {
            ScrollView {
                LazyVStack(spacing: 32) {
                    ForEach(Post.MOCK_POST) { post in
                        FeedCell(post: post)
                    }
                }
                .padding(.top, 8)
            }
            .navigationTitle("Feed")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Image("instagram")
                        .resizable()
                        .frame(width: 100, height: 32)
                }
            }
        }
    }
}

#Preview {
    FeedView()
}
