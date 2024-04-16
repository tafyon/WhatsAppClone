//
//  ConversationsView.swift
//  ChatUiApp
//
//  Created by Tamer Afyon on 12.04.2024.
//

import SwiftUI

struct ConversationsView: View {
    @State private var showNewMessageView = false
    var body: some View {
        ZStack(alignment: .bottomTrailing) {
            //Chats
            ScrollView{
                VStack(alignment: .leading) {                    ForEach((0 ... 10), id: \.self) { _ in
                    ConversationsCell()                }
                }
            }
            //floating button
            Button(action: {
                showNewMessageView.toggle()
            }, label: {
                Image(systemName: "square.and.pencil")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 24, height: 24)
                    .padding()
            })
            .background(Color(.systemBlue))
            .foregroundColor(.white)
            .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
            .padding()
            .sheet(isPresented: $showNewMessageView, content: {
                NewMessagesView()
            })
            
            
        }


    }
}
struct ConversationsView_Previews: PreviewProvider {
    static var previews: some View {
        ConversationsView()
    }
}
