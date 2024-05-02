//
//  Message.swift
//  ChatUiApp
//
//  Created by Tamer Afyon on 2.05.2024.
//

import Foundation

struct Message: Identifiable {
    let id = NSUUID().uuidString
    let isFromCurrentUser: Bool
    let messageText: String
}
