//
//  AuthService.swift
//  InstagramClone
//
//  Created by User on 01/03/24.
//

import Foundation
import FirebaseAuth

class AuthService {
    
    @Published var userSession: FirebaseAuth.User?
    
    static let shared = AuthService()
    
    init() {
        self.userSession = Auth.auth().currentUser
    }
    func login(withEmail email: String, password: String) async throws {
        
    }
    
    func createUser(email: String, password: String, username: String) async throws {
        print("Email in \(email)")
        print("Password in \(password)")
        print("Username in \(username)")
    }
    
    func loadUserData() async throws {
        
    }
    
    func signout() {
        
    }
}
