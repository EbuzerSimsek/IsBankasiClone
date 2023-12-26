//
//  AccountCardView.swift
//  BankApp
//
//  Created by Ebuzer Şimşek on 29.11.2023.
//

import SwiftUI

struct AccountCardView: View {
    
    var iban : String?
    var Bakiye : String?
    var currency : String?
    
    
    var body: some View {
        
            ZStack {
                
                CardView()
                
                
                
                VStack(spacing: 80) {
                    
                    
                    
                    HStack(spacing:1) {
                    
                        VStack(){
                            Text(LocalConstants.sube)
                            .padding(.leading,16)
                            .padding(.bottom,2)
                            .frame(maxWidth:
                                    .greatestFiniteMagnitude,alignment:.leading)
                            .foregroundStyle(.white)
                        
                        
                        
                        Text(iban ?? "iban")
                            .frame(maxWidth:.infinity,alignment:.leading)
                            .font(.caption).bold()
                            .padding(.leading,16)
                            .foregroundStyle(.white)
                        
                        
                    }.padding(.leading,15)
                        
                        CardButtonView(textColor: .white, text: LocalConstants.paylas, width: 100, action: {print("paylas")})
                            .font(.system(size: 15))
                            .bold()
                            .padding(.trailing,20)
                    
                }
                    
                    
                    
                    
                    HStack(spacing: 90) {
                        
                        VStack {
                            Text(LocalConstants.bakiye)
                                .frame(width: 150,alignment: .leading)
                                .foregroundStyle(.white).padding(.leading,15)
                            Text("\(Bakiye!) \(currency!)").bold()
                                .frame(width: 150,alignment: .leading)
                                .foregroundStyle(.white).padding(.leading,15)
                        }
                        CardButtonView(textColor: .white, text: LocalConstants.tumu, width: 100, action: {print("tumu")}).bold()
                    }
                }
            }
        
        
        .padding()
    }
}

#Preview {
    AccountCardView(iban: "TR95 8555 4587 5566 8874 9865 14", Bakiye: "7,32",currency: "TL")
}
