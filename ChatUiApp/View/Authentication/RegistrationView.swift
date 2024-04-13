//
//  RegistrationView.swift
//  ChatUiApp
//
//  Created by Tamer Afyon on 12.04.2024.
//

import SwiftUI

struct RegistrationView: View {
    @State private var email = ""
    @State private var password = ""
    @State private var fullname = ""
    @State private var username = ""
    @Environment(\.presentationMode) var mode
    var body: some View {
        VStack{
            VStack {
                VStack(alignment: .leading, spacing: 40) {
                    HStack {Spacer()}
                    Text("Get Started.")
                        .font(.largeTitle)
                        .bold()
                    Text("Create Your Account")
                        .font(.largeTitle)
                        .bold()
                        .foregroundStyle(.blue)
                    
                    VStack(spacing:20){
                        CustomTextField(imageName: "envelope", placeholderText: "Email", isSecureField: false, text: $email)
                        
                        CustomTextField(imageName: "person", placeholderText: "Full Name", isSecureField: false, text: $fullname)
                        
                        CustomTextField(imageName: "person", placeholderText: "Username", isSecureField: false, text: $username)
                        
                        CustomTextField(imageName: "lock", placeholderText: "Password", isSecureField: true, text: $password)
                        
                        
                    }.padding([.top, .horizontal], 32)
                }
                .padding(.leading)
                
                Button(action: {
                    print("Handle sign up..")
                }, label: {
                    Text("Sign Up")
                        .font(.headline)
                        .foregroundStyle(.white)
                        .frame(width: 340, height: 50)
                        .background(Color.blue)
                        .cornerRadius(10)
                        .padding()
                })
                .padding(.top, 24)
                
                .shadow(color: .gray, radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/, x: 0.0, y:0.0)
                
                
                Spacer()
                
                Button(action: { mode.wrappedValue.dismiss() }, label: {
                    HStack {
                        Text("Already have an account?")
                            .font(.system(size: 14))
                        
                        Text("Sign In")
                            .font(.system(size: 14, weight: .semibold))
                        
                    }
                })
                    .padding(.bottom, 32)
                    
                }
            }
        }
    }
struct RegistrationView_Previews: PreviewProvider {
    static var previews: some View {
        RegistrationView()
    }
}
#Preview {
    RegistrationView()
}
