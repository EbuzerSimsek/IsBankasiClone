//
//  MiddleViewButtonView.swift
//  BankApp
//
//  Created by Ebuzer Şimşek on 14.12.2023.
//

import SwiftUI

struct MiddleViewButtonView: View {
    
    var ButtonIcon : String
    var TextColor  : Color
    var iconColor  : Color
    var text : String
    
    var body: some View {
        
        VStack {
            
            ZStack {
                Circle()
                    .foregroundColor(Color(red: 44/255, green: 43/255, blue: 59/255))
                    .frame(width: 60, height: 60)
                Image(systemName: ButtonIcon)
                    .resizable()
                    .frame(width: 25, height: 25)
                    .foregroundStyle(iconColor)
            }
            Text(text)
                .font(.system(size: 18))
                .bold()
                .foregroundStyle(TextColor)
        }
        
    }
    
}

#Preview {
    MiddleViewButtonView(ButtonIcon: "car", TextColor: .black, iconColor: .blue, text: "Aracım")
}
