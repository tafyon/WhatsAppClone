//
//  SettingsCell.swift
//  ChatUiApp
//
//  Created by Tamer Afyon on 13.04.2024.
//

import SwiftUI

struct SettingsCell:  View {
    let viewModel: SettingsCellViewModel
    var body: some View {
        VStack{
            HStack{
                Image(systemName: viewModel.imageName)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 22, height: 22)
                    .padding(6)
                    .background(viewModel.backgroundColor)
                    .foregroundColor(.white)
                    .cornerRadius(6)
                Text(viewModel.title)
                    .font(.system(size: 15))
                Spacer()
                Image(systemName: "chevron.right")
            }
            .padding([.top, .horizontal])
            Divider()
                .padding(.leading)
        }
        .background(Color.white)
    }
}

