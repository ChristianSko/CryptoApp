//
//  ContentView.swift
//  CryptoApp
//
//  Created by Christian Skorobogatow on 20/8/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color.theme.background
                .ignoresSafeArea()
            
            VStack(spacing: 40) {
                Text("Accent Color")
                    .foregroundColor(.theme.accent)
                
                Text("Seconday Text Color")
                    .foregroundColor(.theme.secondaryText)
                
                Text("Red Color")
                    .foregroundColor(.theme.red)
                
                Text("Red Color")
                    .foregroundColor(.theme.green)
            }
            .font(.headline)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.dark)
    }
}
