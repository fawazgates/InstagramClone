//
//  CreatePasswordView.swift
//  InstagramClone
//
//  Created by User on 28/02/24.
//

import SwiftUI

struct CreatePasswordView: View {
    @Environment (\.dismiss) var dismiss
    @EnvironmentObject var viewModel: RegistrationViewModel
    
    var body: some View {
            VStack(spacing: 12) {
                Text("Create a password")
                    .font(.title2)
                    .fontWeight(.bold)
                    .padding(.top)
                
                Text("Your password must be at least 6 characters in lenght")
                    .font(.footnote)
                    .foregroundColor(.gray)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 24)
                
                TextField("Password", text: $viewModel.password)
                    .autocapitalization(.none)
                    .modifier(IGTextFieldModifer())
                    .padding(.top)
                
                NavigationLink {
                    CreateUsernameView()
                        .navigationBarBackButtonHidden()
                } label: {
                    Text("Next")
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
    CreatePasswordView()
}
