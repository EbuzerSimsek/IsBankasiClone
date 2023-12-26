//
//  MainCardSliderView.swift
//  BankApp
//
//  Created by Ebuzer Şimşek on 1.12.2023.
//

import SwiftUI

struct MainCardSliderView: View {
    @State private var indexPage = 0
    var pages: [Page] = Page.sample
    @State var iban : String
    @State var currency : String
    @State var bakiye : String
    
    
    
    var body: some View {
        
        ZStack {
            
            Rectangle()
                .frame(width:UIScreen.main.bounds.width, height: 300, alignment: .center)
                .foregroundColor(Color(red: 19/255, green: 18/255, blue: 27/255))
            
            VStack() {
                
                
                
                HStack {
                    CardButtonView(textColor: .white, text: LocalConstants.hesabim, width: 100) {
                        indexPage = 0
                    }
                    CardButtonView(textColor: .white, text: LocalConstants.krediKartim, width: 120) {
                        indexPage = 1
                    }
                    CardButtonView(textColor: .white, text: "Net Varlığım", width: 120) {
                        indexPage = 2
                    }
                    Spacer()
                }.padding(.leading,25)
                
                TabView(selection: $indexPage) {
                    ForEach(pages.indices, id: \.self) { index in
                        if index == 0 {
                            AccountCardView(iban:iban, Bakiye:bakiye,currency: currency)
                        } else if index == 1 {
                            MyCreditCardView()
                        } else {
                            NetWorthView()
                        }
                    }
                }
                .animation(.easeInOut, value: indexPage)
                .tabViewStyle(.page)
                .frame(maxWidth: .infinity, maxHeight: 300)
            }
            .onAppear {
                
                
                UIPageControl.appearance().currentPageIndicatorTintColor = UIColor.clear
                UIPageControl.appearance().pageIndicatorTintColor = UIColor.clear
            }
        }
    }
    
}


#Preview {
    MainCardSliderView(iban: "TR84785757577575757", currency: "TL", bakiye: "7,32")
}
