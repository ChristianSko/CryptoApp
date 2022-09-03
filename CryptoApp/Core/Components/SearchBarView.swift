//
//  SearchBarView.swift
//  CryptoApp
//
//  Created by Christian Skorobogatow on 3/9/22.
//

import SwiftUI

struct SearchBarView: View {
    
    @Binding var searchText: String
    
    var body: some View {
        HStack {
            Image(systemName: "magnifyingglass")
                .foregroundColor(searchText.isEmpty ? .theme.secondaryText : .theme.accent)
            
            TextField("Search by name or symbol...", text: $searchText)
                .foregroundColor(.theme.accent)
                .disableAutocorrection(true)
                .overlay(
                    Image(systemName: "xmark.circle.fill")
                        .padding() // Adding padding to increase tappable area
                        .offset(x: 10)
                        .foregroundColor(.theme.accent)
                        .opacity(searchText.isEmpty ? 0.0 : 1.0)
                        .onTapGesture {
                            UIApplication.shared.endEditing()
                            searchText = ""
                        }
                    
                    
                    ,alignment: .trailing
                )
        }
        .font(.headline)
        .padding()
        .background(
            RoundedRectangle(cornerRadius: 25)
                .fill(Color.theme.background)
                .shadow(color: .theme.accent.opacity(0.15),
                        radius: 10, x: 0, y: 0)
        )
        .padding()
    }
}

struct SearchBarView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            SearchBarView(searchText: .constant(""))
                    .previewLayout(.sizeThatFits)
                    .preferredColorScheme(.dark)
                
            SearchBarView(searchText: .constant(""))
                    .previewLayout(.sizeThatFits)
                    .preferredColorScheme(.light)
        }
    }
}
