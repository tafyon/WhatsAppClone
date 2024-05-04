//
//  AuthViewModel.swift
//  ChatUiApp
//
//  Created by Tamer Afyon on 3.05.2024.
//

import Firebase

class AuthViewModel: NSObject, ObservableObject {
    func login() {
        print("Login user from view model..")
    }
    
    func register(withEmail email: String, password: String, fullname: String, username: String) {
        Auth.auth().createUser(withEmail: email, password: password) { result, error in
            if let error = error {
                print("DEBUG: Failed to register with error \(error.localizedDescription)")
                return
            }
            guard let user = result?.user else { return }
            let data: [String: Any] = ["email": email,
                                       "username": username,
                                       "fullname": fullname]
            Firestore.firestore().collection("users").document(user.uid).setData(data) { error in
                if let error = error {
                    print("DEBUG: Failed to update user info in firestore with error \(error.localizedDescription)")
                    return
                }
                print("DEBUG: Successfully registered user with firebase!")
            }
        }
    }
    func uploadProfileImage() {
        
    }
    func singout() {
        
    }
}
