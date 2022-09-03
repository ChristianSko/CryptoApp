//
//  UIApplication.swift
//  CryptoApp
//
//  Created by Christian Skorobogatow on 3/9/22.
//

import SwiftUI

extension UIApplication {
    
    func endEditing() {
        sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
    
}
