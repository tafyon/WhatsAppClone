//
//  ProfilePhotoSelector.swift
//  ChatUiApp
//
//  Created by Tamer Afyon on 5.05.2024.
//

import SwiftUI

struct ProfilePhotoSelectorView: View {
    @State private var imagePickerPresented = false
    @State private var selectedImage: UIImage?
    @State private var profileImage: Image?
    
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

#Preview {
    ProfilePhotoSelectorView()
}
