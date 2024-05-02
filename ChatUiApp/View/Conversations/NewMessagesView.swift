//
//  NewMessagesView.swift
//  ChatUiApp
//
//  Created by Tamer Afyon on 16.04.2024.
//

import SwiftUI

struct NewMessagesView: View {
    @Binding var showChatView: Bool
    @Environment(\.presentationMode) var mode
    @State private var searcText = ""
    @State private var isEditing = false
    var body: some View {
        
        ScrollView{
            SearchBar(text: $searcText, isEditing: $isEditing)
                .onTapGesture { isEditing.toggle() }
                .padding()
            
            VStack(alignment: .leading) {                    ForEach((0 ... 10), id: \.self) { _ in
                Button(action: {
                    showChatView.toggle()
                    mode.wrappedValue.dismiss()
                }, label: {
                    UserCell()
                })
            }
            }
            }
        }
}

struct NewMessagesView_Previews: PreviewProvider {
    static var previews: some View {
        NewMessagesView(showChatView: .constant(true))
    }
}
