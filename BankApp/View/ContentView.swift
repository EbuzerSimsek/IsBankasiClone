//
//  ContentView.swift
//  BankApp
//
//  Created by Ebuzer Şimşek on 26.12.2023.
//

import SwiftUI

struct ContentView: View {
    
    @State var index : Int
    
    var body: some View {
        
        
        
        ZStack {
            
            switch index {
            case 0:
                MainView()
            case 3:
                MiddleView()
            default:
                MainView()
            }
            
            VStack {
                
                Spacer()
                
                CustomTabView(index: $index)
                
            }.ignoresSafeArea()
        }
        
        
    }
}

#Preview {
    ContentView(index:0)
}
