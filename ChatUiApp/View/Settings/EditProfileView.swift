//
//  EditProfileView.swift
//  ChatUiApp
//
//  Created by Tamer Afyon on 13.04.2024.
//

import SwiftUI

struct EditProfileView: View {
    @State private var fullname = "Tamer Afyon"
    var body: some View {
        ZStack{
            Color(.systemGroupedBackground)
                .ignoresSafeArea()
            
            VStack(alignment: .leading, spacing: 44) {
                //header
                
                VStack{
                    //photo /edit button / text
                    HStack{
                        
                        //photo / edit button
                        
                        VStack{
                            Image("UserAvatar")
                                .resizable()
                                .scaledToFill()
                                .frame(width: 64, height: 64)
                                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                            Button(action: {
                                print("Change profile photo here")}, label: {
                                    Text("Edit")
                                })
                        }
                        .padding(.top)
                        Text("Enter your name or change your profile photo")
                            .font(.system(size: 16))
                            .foregroundColor(.gray)
                            .padding([.bottom, .horizontal])
                    }
                    
                    Divider()
                        .padding(.horizontal)
                    TextField("", text: $fullname)
                        .padding(8)
                        .background(Color.white)
                }
                .background(Color.white)
                
                VStack(alignment: .leading){
                    Text("Status")
                        .padding()
                        .foregroundColor(.gray)
                    
                //status
                    NavigationLink(
                        destination: StatusSelectorView(),
                        label: {
                            HStack{
                            Text("At the movies")
                            
                            Spacer()
                            
                            Image(systemName: "chevron.right")
                                .foregroundColor(.gray)
                            }
                        .padding()
                        .background(Color.white)
                    })


            }
                Spacer()
            }
        }
        .navigationBarTitleDisplayMode(.inline)
        .navigationTitle("Edit Profile")
        
    }
}

#Preview {
    EditProfileView()
}
