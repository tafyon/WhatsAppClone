//
//  Extensions.swift
//  ChatUiApp
//
//  Created by Tamer Afyon on 22.04.2024.
//

import UIKit

extension UIApplication {
    func endEditing() {
        sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}
