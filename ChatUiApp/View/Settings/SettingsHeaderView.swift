//
//  SettingsHeaderView.swift
//  ChatUiApp
//
//  Created by Tamer Afyon on 12.04.2024.
//
import SwiftUI
struct SettingsHeaderView: View {
    var body: some View {
        HStack{
            Image("UserAvatar")
                .resizable()
                .scaledToFill()
                .frame(width: 64, height: 64)
                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                .padding(.leading)
            
            VStack(alignment: .leading, spacing: 4) {
                Text("Tamer Afyon")
                    .font(.system(size: 18))
                    .foregroundColor(.black)
                Text("Available")
                    .foregroundColor(.gray)
                    .font(.system(size: 14))
            }
            
            Spacer()
        }
        .frame(height: 80)
        .background(Color.white)
    }
}


