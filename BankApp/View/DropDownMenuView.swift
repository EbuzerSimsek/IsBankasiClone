//
//  DropDownMenuView.swift
//  BankApp
//
//  Created by Ebuzer Şimşek on 12.12.2023.
//

import SwiftUI
struct DropDownMenuView: View {
    
    @ObservedObject private var mainVM = MainViewModel()
    
    @State var show = false
    @State var name = "item1"
    
    
    var body: some View {
        VStack {
            ZStack {
                ZStack {
                    RoundedRectangle(cornerRadius: 10)
                    ScrollView {
                        VStack(spacing:17) {
                            ForEach(mainVM.dropMenus ?? [], id: \.id) { transaction in
                                HStack {
                                    Image("\(transaction.image)")
                                        .resizable()
                                        .renderingMode(.template)
                                        .frame(width: 30, height: 30)
                                        .foregroundStyle(.blue)
                                        .padding(.trailing)

                                    VStack(alignment: .leading) {
                                        Text(transaction.title)
                                            .frame(height: 20)
                                            .foregroundStyle(.white)
                                            .bold()

                                        Text("Vadesiz * 6 Aralık 2023")
                                            .frame(height: 20)
                                            .lineLimit(1)
                                            .font(.system(size: 14))
                                            .foregroundStyle(.white)
                                    }
                                    .frame(width: 180, alignment: .leading)

                                    Spacer()
                                    
                                    Text(transaction.price)
                                        .bold()
                                        .font(.system(size: 16))
                                        .foregroundStyle(.white)
                                        .lineLimit(1)
                                }
                                .padding(.leading,6)

                                
                            }
                            
                            
                            
                            
                        }.padding()
                            .padding(.top,35)
                    .frame(maxWidth: .infinity,alignment:.leading)
                        
                    }
                }
                .frame(width: 360, height: show ? 320 : 50)
                .offset(y: show ? 0 : -145)
                .foregroundColor(Color(red: 44/255, green: 43/255, blue: 59/255))
                
                ZStack {
                    RoundedRectangle(cornerRadius: 10)
                        .frame(width: 360,height: 60)
                        .foregroundColor(Color(red: 44/255, green: 43/255, blue: 59/255))
                    
                    
                    HStack {
                        Image(systemName: "timer")
                            .foregroundStyle(.blue)
                            .padding(.leading,7)
                        Text("Son İşlemlerim")
                            .foregroundStyle(.white)
                            .font(.title3)
                        Spacer()
                        Image(systemName: "chevron.down.circle.fill")
                            .foregroundColor(
                                Color(red: 46/255,
                                      green: 53/255,
                                      blue: 74/255))
                        
                            .rotationEffect(.degrees(show ? 180 : 360))
                            .font(.system(size: 20))
                        
                    }
                    .bold()
                    .padding(.horizontal)
                }
                .offset(y:-140)
                .onTapGesture {
                    withAnimation {
                        show.toggle()
                    }
                }
            }
        }
        .padding()
    }
}




#Preview {
    DropDownMenuView()
}
