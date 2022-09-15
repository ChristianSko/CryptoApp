//
//  PortfolioView.swift
//  CryptoApp
//
//  Created by Christian Skorobogatow on 8/9/22.
//

import SwiftUI

struct PortfolioView: View {
    
    @Binding var showPortfolioView: Bool
        
    var body: some View {
        NavigationView {
            ScrollView {
                VStack(alignment: .leading, spacing: 0) {
                    Text("Hi")
                }
            }
            .navigationTitle("Edit Profile")
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    XMarkButton(showPortfolioView: $showPortfolioView)
                }
            }
        }
    }
}

struct PortfolioView_Previews: PreviewProvider {
    static var previews: some View {
        PortfolioView(showPortfolioView: .constant(false))
    }
}
