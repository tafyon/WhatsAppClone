//
//  UserCell.swift
//  ChatUiApp
//
//  Created by Tamer Afyon on 16.04.2024.
//

import SwiftUI

struct ConversationsCell: View {
    var body: some View {
        VStack {
            HStack{
                //image
                Image("UserAvatar")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 48, height: 48)
                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                //message info
                
                
                VStack(alignment: .leading, spacing: 4){
                    Text("Tamer Afyon")
                        .font(.system(size: 14, weight: .semibold))
                    Text("This is a some test message for now..")
                        .font(.system(size: 15))
                    Text("@tamerafyon")
                        .font(.system(size: 15))
                    
                    
                }.foregroundColor(.black)
                Spacer()
            }
            .padding(.horizontal)

        }
        .padding(.top)
    }
}

struct ConversationsCell_Previews: PreviewProvider {
    static var previews: some View {
        ConversationsCell()
    }
}
