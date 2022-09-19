//
//  XMarkButton.swift
//  CryptoApp
//
//  Created by Christian Skorobogatow on 15/9/22.
//

import SwiftUI

struct XMarkButton: View {
    
    var dismiss: DismissAction
    
    var body: some View {
        Button(action: {
            dismiss.callAsFunction()
        }, label: {
            Image(systemName: "xmark")
                .font(.headline)
        })
    }
}

//TO DO: Find way to fix preview with dismiss Enviroment

//struct XMarkButton_Previews: PreviewProvider {
//
//    @Environment(\.dismiss)  var dismiss
//
//    static var previews: some View {
//        XMarkButton(dismiss: dismiss)
//    }
//}
