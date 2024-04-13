//
//  StatusSelectorView.swift
//  ChatUiApp
//
//  Created by Tamer Afyon on 13.04.2024.
//

import SwiftUI

struct StatusSelectorView: View {
    var body: some View {
        ZStack{
            Color(.systemGroupedBackground)
                .ignoresSafeArea()
            
            ScrollView{
                VStack(alignment: .leading) {
                    Text("CURRENTLY SET TO")
                        .foregroundColor(.gray)
                        .padding()
                    
                    
                    StatusCell()
                    
                    Text("SELECT YOUR STATUS")
                        .foregroundColor(.gray)
                        .padding()

                    
                    ForEach((0...10), id:\.self) { _ in
                        Button(action: {
                            print("Change status here..")
                        }, label: {
                            StatusCell()                        })
                        
                        
                    }
                    
                }
            }
            
            }
    }
}

#Preview {
    StatusSelectorView()
}

struct StatusCell: View {
    var body: some View {
        HStack{
            Text("Available")
                .foregroundColor(.black)
            Spacer()
        }
        .frame(height: 56)
        .padding(.horizontal)
        .background(Color.white)
    }
}
