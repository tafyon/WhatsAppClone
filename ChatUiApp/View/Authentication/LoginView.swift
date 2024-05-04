//
//  LoginView.swift
//  ChatUiApp
//
//  Created by Tamer Afyon on 12.04.2024.
//

import SwiftUI

struct LoginView: View {
    @State private var email = ""
    @State private var password = ""
    @ObservedObject var viewModel = AuthViewModel()
    var body: some View {
        VStack {
            NavigationView {
                VStack {
                    VStack(alignment: .leading, spacing: 12) {
                    HStack {Spacer()}
                    Text("Hello.")
                        .font(.largeTitle)
                        .bold()
                    Text("Welcome Back")
                        .font(.largeTitle)
                        .bold()
                        .foregroundStyle(.blue)
                    
                    VStack(spacing:40){
                        CustomTextField(imageName: "envelope", placeholderText: "Email", isSecureField: false, text: $email)
                        CustomTextField(imageName: "lock", placeholderText: "Password", isSecureField: true, text: $password)

                                            
                    }.padding([.top, .horizontal], 32)
                }
                    .padding(.leading)
                    HStack{
                        Spacer()
                        NavigationLink(
                            destination: Text("Reset Password"), label:{
                                Text("Forgot Password?")
                                    .font(.system(size: 13, weight: .semibold))
                                    .padding(.top)
                                    .padding(.trailing, 28)
                            } )

                    }
                    
                    Button(action: {
                        viewModel.login()
                    }, label: {
                        Text("Sign In")
                            .font(.headline)
                            .foregroundStyle(.white)
                            .frame(width: 340, height: 50)
                            .background(Color.blue)
                            .cornerRadius(10)
                            .padding()
                    })
                    
                    .shadow(color: .gray, radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/, x: 0.0, y:0.0)
                    
                    Spacer()
                    
                    NavigationLink(
                        destination: RegistrationView()
                            .navigationBarBackButtonHidden(true),
                        label: {
                            HStack{
                                Text("Don't have an account")
                                    .font(.system(size: 14))
                                Text("Sign Up")
                                    .font(.system(size: 14, weight: .semibold))
                            }
                            
                        }).padding(.bottom, 32)
                    
                }
            }
            .padding(.top, -56)
        }
    }
    }
#Preview {
    LoginView()
}
