//
//  SettingsView.swift
//  ChatUiApp
//
//  Created by Tamer Afyon on 12.04.2024.
//

import SwiftUI

struct SettingsView: View {
    var body: some View {
        ZStack {
            Color(.systemGroupedBackground)
                .ignoresSafeArea()
            
            VStack(spacing: 32) {
                NavigationLink(
                    destination: EditProfileView(),
                    label: { SettingsHeaderView() })
                
                VStack(spacing: 1) {
                    ForEach((SettingsCellViewModel.allCases), id: \.self) { viewModel in
                        SettingsCell(viewModel: viewModel)
                    
                    }
                }
                Button(action: {
                    print("Handle log out")
                }, label: {
                    Text("Log Out")
                        .foregroundColor(.red)
                        .font(.system(size:16, weight: .semibold))
                        .frame(width: UIScreen.main.bounds.width, height: 50)
                        .background(Color.white)
                })
                
                Spacer()
                
                
            }
            
            
        }
    }
}



struct SettingsView_Previews: PreviewProvider{
    
    static var previews: some View {
        SettingsView()
        
    }
}
    
