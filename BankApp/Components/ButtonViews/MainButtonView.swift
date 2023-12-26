//
//  MainButtonView.swift
//  BankApp
//
//  Created by Ebuzer Şimşek on 29.11.2023.
//

import SwiftUI

struct MainButtonView: View {
    
    var text : String
    var action: () -> Void
    
    
    var body: some View {
        VStack {
            Button(action: {
                self.action()
            } ) {
                VStack {
                    Image(systemName: "iphone")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 70, height: 30, alignment: .center)
                        .opacity(1.0) // Image'in şeffaflığını sıfıra ayarla
                    
                    
                    
                    
                        .frame(width: 90, height: 60, alignment: .center)
                        .tint(.blue)
                        .background(Color.white.opacity(0.05))
                        .cornerRadius(10)// Sadece butonun arka planına şeffaflık ekle
                    
                    Text(text)
                   
                                   .multilineTextAlignment(.center)
                                   .lineLimit(2) // İki satıra kadar göster
                                   .foregroundStyle(.white)
                }
            }
            
            
            
            
        }
    }
}

#Preview {
    MainButtonView(text: "Mobil Borsa", action: {
        print("Button Tapped")
    })
}
