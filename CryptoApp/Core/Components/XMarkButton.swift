//
//  XMarkButton.swift
//  CryptoApp
//
//  Created by Christian Skorobogatow on 15/9/22.
//

import SwiftUI

struct XMarkButton: View {
    
    @Environment(\.presentationMode) var presentationMode // TO DO: Fix using this, currently not working
    @Binding var showPortfolioView: Bool
    
    var body: some View {
        Button(action: {
//            presentationMode.wrappedValue.dismiss()
            showPortfolioView.toggle()
        
        }, label: {
            Image(systemName: "xmark")
                .font(.headline)
        })
    }
}

struct XMarkButton_Previews: PreviewProvider {
    static var previews: some View {
        XMarkButton(showPortfolioView: .constant(false))
    }
}
