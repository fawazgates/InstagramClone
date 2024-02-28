//
//  UserStatView.swift
//  InstagramClone
//
//  Created by User on 28/02/24.
//

import Foundation
import SwiftUI

struct UserStatView: View {
    let value: Int
    let title: String
    
    var body: some View {
        VStack {
            Text("\(value)")
                .font(.subheadline)
                .fontWeight(.semibold)
            
            Text(title)
                .font(.footnote)
        }
        .frame(width: 78)
    }
}

#Preview {
    UserStatView(value: 12, title: "Posts")
}
