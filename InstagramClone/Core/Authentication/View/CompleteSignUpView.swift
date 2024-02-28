//
//  CompleteSignUpView.swift
//  InstagramClone
//
//  Created by User on 28/02/24.
//

import SwiftUI

struct CompleteSignUpView: View {
    @State private var email = ""
    @Environment (\.dismiss) var dismiss
    @EnvironmentObject var viewModel: RegistrationViewModel
    
    var body: some View {
        VStack(spacing: 12) {
                Spacer()
            Text("Welcom to Instagram, fawazgates")
                .font(.title2)
                .fontWeight(.bold)
                .padding(.top)
                .multilineTextAlignment(.center)

            
            Text("Click below to complate registration and start using Instagram")
                .font(.footnote)
                .foregroundColor(.gray)
                .multilineTextAlignment(.center)
                .padding(.horizontal, 24)
            
            Button {
                Task { try await viewModel.createUser() }
            } label: {
                Text("Complate sign up")
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .foregroundColor(.white)
                    .frame(width: 360, height: 40)
                    .background(Color(.systemBlue))
                    .cornerRadius(8)
            }
            .padding(.vertical)
            
            Button {
                print("Go to username")
            } label: {
                
            }
            
            Spacer()
        }
        .toolbar {
            ToolbarItem(placement: .navigationBarLeading) {
                Image(systemName: "chevron.left")
                    .imageScale(.large)
                    .onTapGesture {
                        dismiss()
                    }
            }
        }
    }
}
#Preview {
    CompleteSignUpView()
}
