//
//  CryptoAppApp.swift
//  CryptoApp
//
//  Created by Christian Skorobogatow on 20/8/22.
//

import SwiftUI

@main
struct CryptoAppApp: App {
    
@StateObject private var vm = HomeViewModel()
    
    var body: some Scene {
        WindowGroup {
            NavigationView {
                HomeView()
                    .navigationBarHidden(true)
            }
        }
    }
}
