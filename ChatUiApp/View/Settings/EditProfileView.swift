//
//  EditProfileView.swift
//  ChatUiApp
//
//  Created by Tamer Afyon on 13.04.2024.
//

import SwiftUI

struct EditProfileView: View {
    @State private var fullname = "Tamer Afyon"
    @State private var showImagePicker = false
    @State private var selectedImage: UIImage?
    @State private var profileImage: Image?
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
                            if let profileImage = profileImage {
                                profileImage
                                    .resizable()
                                    .scaledToFill()
                                    .frame(width: 64, height: 64)
                                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                            } else {
                                Image("UserAvatar")
                                    .resizable()
                                    .scaledToFill()
                                    .frame(width: 64, height: 64)
                                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                            }
                            Button(action: {
                                showImagePicker.toggle()
                            }, label: {
                                    Text("Edit")
                                })
                            .fullScreenCover(isPresented: $showImagePicker, onDismiss: loadImage) { ImagePicker(image: $selectedImage)
                            }
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
    func loadImage() {
        guard let selectedImage = selectedImage else {return}
        profileImage = Image(uiImage: selectedImage)
    }
}

#Preview {
    EditProfileView()
}
