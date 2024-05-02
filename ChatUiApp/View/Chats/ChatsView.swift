//
//  ChatsView.swift
//  ChatUiApp
//
//  Created by Tamer Afyon on 12.04.2024.
//

import SwiftUI

struct ChatsView: View {
    @State private var messageText = ""
    @ObservedObject var viewModel = ChatViewModel()
    var body: some View {
        VStack {
            //messages
            ScrollView {
                VStack(alignment: .leading, spacing: 12){
                    ForEach(viewModel.messages) { message in
                        MessageView(isFromCurrentUser: message.isFromCurrentUser, messageText: message.messageText)
                    }
                            
                }
            }
            CustomInputView(text: $messageText, action: sendMessage)
        }.navigationTitle("Tamer Afyon")
        .navigationBarTitleDisplayMode(.inline)
        .padding(.vertical)

    }
    func sendMessage() {
        viewModel.sendMessage(messageText)
        messageText = ""
    }
}

#Preview {
    ChatsView()
}
