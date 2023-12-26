//
//  MyCreditCardView.swift
//  BankApp
//
//  Created by Ebuzer Şimşek on 29.11.2023.
//

import SwiftUI

struct MyCreditCardView: View {
    
    
    var body: some View {
        
        ZStack {
            CardView()
            VStack(spacing:60) {
                
                HStack(spacing:108) {
                    
                    VStack {
                        Text(LocalConstants.maximumGenc)
                            .bold()
                            .font(.system(size: 20))
                            .foregroundStyle(.white)
                        Text(LocalConstants.gizliIban)
                            .font(.system(size: 15))
                            .foregroundStyle(.white)
                    }
                    
                    
                    
                    Image(LocalConstants.visa)
                        .resizable()
                        .frame(width: 70, height: 60)
                    
                }
                
                
                HStack(spacing:50) {
                    
                    
                    VStack {
                        Text(LocalConstants.kullanilabLimit)
                            .foregroundStyle(.white)
                            .frame(width: 150, height: 20, alignment:.leading)
                        
                        Text(LocalConstants.dortyuzonalti)
                            .font(.title3)
                            .bold()
                            .foregroundStyle(.white)
                            .frame(width: 150, height: 10, alignment:.leading)
                    }
                    
                    
                    VStack {
                        Text(LocalConstants.guncelBorc)
                            .foregroundStyle(.white)
                        
                        
                        
                        Text(LocalConstants.binikiyuz)
                            .font(.title3)
                            .bold()
                            .foregroundStyle(.white)
                        
                    }
                    
                    
                }.padding(.trailing)
                
                
            }
            
        }
    }
}

#Preview {
    MyCreditCardView()
}
