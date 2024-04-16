//
//  UserCell.swift
//  ChatUiApp
//
//  Created by Tamer Afyon on 16.04.2024.
//

import SwiftUI

struct UserCell: View {
    var body: some View {
        VStack{
            HStack{
                Image("UserAvatar")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 48, height: 48)
                    .clipShape(Circle())
                
                VStack(alignment: .leading, spacing: 4) {
                    Text("Tamer Afyon")
                        .font(.system(size: 14, weight: .semibold))
                    Text("Merhaba 👋🏼")
                        .font(.system(size: 15, weight: .semibold))
                }
                
                              Spacer()
                    }
            .padding(.horizontal)
                }
        .padding(.top)
            }
        }
        

#Preview {
    UserCell()
}
