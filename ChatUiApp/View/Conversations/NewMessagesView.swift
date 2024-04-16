//
//  NewMessagesView.swift
//  ChatUiApp
//
//  Created by Tamer Afyon on 16.04.2024.
//

import SwiftUI

struct NewMessagesView: View {
    var body: some View {
        
        ScrollView{
            VStack(alignment: .leading) {                    ForEach((0 ... 10), id: \.self) { _ in
                UserCell()    
            }
            }
            }
        }
}

struct NewMessagesView_Previews: PreviewProvider {
    static var previews: some View {
        NewMessagesView()
    }
}
