//
//  BottomView.swift
//  BankApp
//
//  Created by Ebuzer Şimşek on 30.11.2023.
//

import SwiftUI

struct BottomView: View {
    
    
    var body: some View {
        
        ZStack {
            
            Rectangle()
                .frame(width:UIScreen.main.bounds.width, height: 1000, alignment: .center)
                .cornerRadius(20)
                .foregroundColor(Color(red: 32/255, green: 35/255, blue: 45/255))
            
            
            VStack(spacing:-60) {
                
                HStack(spacing:130) {
                    Category(image: LocalConstants.starCircle, text: LocalConstants.kisayollarim)
                    
                    CardButtonView(textColor: .blue, text: LocalConstants.duezenle, width: 100, action: {print("duzenle")}).font(.system(size: 12))
                        .padding(.trailing)
                    
                    
                }
                
                
                
                HStack(spacing:20) {
                    
                    MainButtonView(text: LocalConstants.mobilBorsa, action: {print("dss")}).padding(.leading,20).frame(width: 120, height: 100, alignment: .center)
                    
                    
                    
                    MainButtonView(text: LocalConstants.anindaFaturaOde, action: {print("dss")}).frame(width: 100, height: 150, alignment: .center).padding(.top,22)
                    
                    
                    MainButtonView(text: LocalConstants.paraCek, action: {print("dss")})
                    
                    Spacer()
                    
                }.padding(.leading,20)
                
                
                
                
                HStack(spacing:130) {
                    
                    Category(image: LocalConstants.gift, text: LocalConstants.kampanyalar)
                    
                    
                    
                    CardButtonView(textColor: .blue, text: LocalConstants.tumu, width: 100, action: {print("tumu")}).font(.system(size: 12))
                        .padding(.trailing)
                    
                    
                }.padding(.top,40)
                
                PageView(pages: Page.sample)
                
                
               
                Spacer()
                
                DropDownMenuView()
                
                Spacer()
                
            }.safeAreaPadding(.top, 30)
           
            
        }
    }
}

#Preview {
    BottomView()
}

struct Category: View {
    
    
    var image : String
    var text  : String
    
    var body: some View {
        HStack(spacing:5) {
            
            
            Image(systemName: image).resizable().aspectRatio(contentMode: .fit)
                .frame(width: 20, height: 20)
                .foregroundColor(.blue)
                .padding(.leading,20)
            
            
            
            Text(text)
                .foregroundStyle(.white)
                .frame(width: 120, height: 100)
                .bold()
            
            
        }
    }
}
