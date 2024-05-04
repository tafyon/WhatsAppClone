//
//  ChatViewModel.swift
//  ChatUiApp
//
//  Created by Tamer Afyon on 2.05.2024.
//

import Foundation

class ChatViewModel: ObservableObject {
    @Published var messages = [Message]()
    init() {
        messages = mockMessages
    }
    var mockMessages: [Message] {
        [
            .init(isFromCurrentUser: true, messageText: "Hi ! "),
            .init(isFromCurrentUser: false, messageText: "Hi 👋🏼"),
            .init(isFromCurrentUser: true, messageText: "How are u?"),
            .init(isFromCurrentUser: false, messageText: "Fine, you?"),
        ]
    }
    func sendMessage(_ messageText: String) {
        let message = Message(isFromCurrentUser: true, messageText: messageText)
        messages.append(message)
    }
}
