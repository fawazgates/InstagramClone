//
//  ContentView.swift
//  InstagramClone
//
//  Created by User on 28/02/24.
//

import SwiftUI

struct ContentView: View {
    @StateObject var viewModel = ContentViewModel()
    @StateObject var registrationViewModel = RegistrationViewModel()
    
    var body: some View {
        Group {
//            if viewModel.userSession == nil {
//                LoginView()
//                    .environmentObject(registrationViewModel)
//            } else {
                MainTabView()
            }
        }
    }


#Preview {
    ContentView()
}
