//
//  MainView.swift
//  BankApp
//
//  Created by Ebuzer Şimşek on 29.11.2023.
//

import SwiftUI

struct MainView: View {
    @State private var searchText = ""
    @ObservedObject var mainVM = MainViewModel()
    @State var index = 0
    
    var body: some View {
        NavigationView {
            
            
            
            ScrollView {
                
                
                
                VStack(spacing: 0) {
                    
                   
                    if let accountInfo = mainVM.accountInfo {
                        MainCardSliderView(pages: Page.sample, iban: accountInfo.iban, currency: accountInfo.currencyCode, bakiye: accountInfo.balance)
                    } else {
                        Text("Account bilgisi nil")
                    }
                    
                    
                    
                    BottomView()
                    
                    
                }
            }
            .background(Color(red: 19/255, green: 18/255, blue: 27/255))
            .searchable(text: $searchText, prompt: LocalConstants.anindaFaturaOde)
        }.onAppear {
            if let accountTrans = mainVM.accountTransactions {
                print(accountTrans.first?.balance ?? "sddscs")
                   
            }
        }
    }
}

#Preview {
    MainView()
        .environmentObject(MainViewModel())
}
