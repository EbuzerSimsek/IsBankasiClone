//
//  CardButtonView.swift
//  BankApp
//
//  Created by Ebuzer Şimşek on 29.11.2023.
//

import SwiftUI

struct CardButtonView: View {
    var textColor: Color
    var text: String
    var width : CGFloat
    var action: () -> Void
    
    var body: some View {
        Button(action: {
            self.action()
        }) {
            Text(text)
                .foregroundStyle(textColor) // Set the text color here
        }
        .frame(width: width, height: 50, alignment: .center)
        .buttonStyle(.bordered)
    }
}






#Preview {
    CardButtonView(textColor: .white, text: "Button", width: 100, action: {print("fd")})
}
