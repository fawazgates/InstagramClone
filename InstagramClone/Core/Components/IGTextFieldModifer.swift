//
//  IGTextFieldModifer.swift
//  InstagramClone
//
//  Created by User on 28/02/24.
//

import Foundation
import SwiftUI

struct IGTextFieldModifer: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.subheadline)
            .padding(12)
            .background(Color(.systemGray6))
            .cornerRadius(10)
            .padding(.horizontal, 24)
    }
}
