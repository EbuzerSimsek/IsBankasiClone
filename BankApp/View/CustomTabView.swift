//
//  CustomTabView.swift
//  BankApp
//
//  Created by Ebuzer Şimşek on 25.12.2023.
//

import SwiftUI

struct CustomTabView: View {
    
    @Binding var index : Int
    
    var body: some View {
        ZStack {
            Rectangle()
                .frame(width: .infinity, height: 110)
                .foregroundStyle(Color(red: 19/255, green: 18/255, blue: 27/255))
            
            HStack() {
                
                Button(action: {
                    
                    self.index = 0
                    
                }, label: {
                    
                    VStack {
                        Image(systemName: "house")
                            .resizable()
                            .renderingMode(.template)
                            .foregroundStyle(index == 0 ? Color.blue : Color.gray)

                            .frame(width: 30, height: 30)
                        Text("Ana Sayfa")
                            .font(.system(size: 12))
                            .foregroundStyle(index == 0 ? Color.blue : Color.gray)
                    }
                    
                    
                    
                })
                
                Spacer(minLength: 0)
                
                Button(action: {
                    
                    self.index = 1
                    
                }, label: {
                    VStack {
                        Image("coinSending")
                            .resizable()
                            .renderingMode(.template)
                            .foregroundStyle(index == 1 ? Color.blue : Color.gray)
                            .frame(width: 30, height: 30)
                        Text("Para Aktar")
                            .font(.system(size: 12))
                            .foregroundStyle(index == 1 ? Color.blue : Color.gray)
                    }
                    
                })
                Spacer(minLength: 0)
                
                Button(action: {
                    
                    self.index = 3
                    
                }, label: {
                    ZStack {
                        Circle()
                            .foregroundStyle(.blue)
                            .frame(width: 50, height: 50)
                            .overlay(Circle()
                                .stroke(Color.white, lineWidth: 2)
                                .opacity(index == 3 ? 1.0 : 0.0))
                        
                        Image(systemName: "line.3.horizontal")
                            .foregroundStyle(.white)
                    }
                    .frame(alignment: .center)
                    .offset(y:-5)
                    
                    
                })
                
                Spacer(minLength: 0)
                
                Button(action: {
                    
                    self.index = 4
                    
                }, label: {
                    VStack {
                        Image(systemName: "banknote")
                            .resizable()
                            .renderingMode(.template)
                            .foregroundStyle(index == 4 ? Color.blue : Color.gray)
                            .frame(width: 30, height: 30)
                        Text("Ödeme Yap")
                            .font(.system(size: 12))
                            .foregroundStyle(index == 4 ? Color.blue : Color.gray)
                    }
                })
                
                Spacer(minLength: 0)
                
                Button(action: {
                    
                    self.index = 5
                    
                }, label: {
                    VStack {
                        Image("bill")
                            .resizable()
                            .renderingMode(.template)
                            .foregroundStyle(index == 5 ? Color.blue : Color.gray)
                            .frame(width: 30, height: 30)
                        Text("Harcamalar")
                            .font(.system(size: 12))
                            .foregroundStyle(index == 5 ? Color.blue : Color.gray)
                    }
                })
            }
            .frame(alignment: .center)
            .padding(.horizontal,15)
            .padding(.bottom,30)
            
           
            
        }
    }
}

#Preview {
    CustomTabView(index:.constant(0))
}
