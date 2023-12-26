//
//  PageView.swift
//  BankApp
//
//  Created by Ebuzer Şimşek on 25.12.2023.
//

import SwiftUI

struct PageView: View {
    
    @State private var indexPage = 0
    var pages: [Page] = Page.sample
    
    
    var body: some View {
        VStack {
            
            TabView(selection: $indexPage) {
                ForEach(pages.indices, id: \.self) { index in
                        Image(pages[index].image)
                        .resizable()
                        .frame(width: 360, height: 220)
                        .cornerRadius(10)
                        .tag(index)
                }
            }
            .animation(.easeInOut, value: indexPage)
            .tabViewStyle(.page)
            .overlay(
                PageControl(numberOfPages: pages.count, currentPage: $indexPage)
                    .padding(.top, 270)
                
            )
            .frame(maxWidth: .infinity, maxHeight: 300)
            
            
            
        }
        .onAppear {
                    // TabView'ın altındaki noktaları gizleyin
                    UIPageControl.appearance().currentPageIndicatorTintColor = UIColor.clear
                    UIPageControl.appearance().pageIndicatorTintColor = UIColor.clear
                }
    }
    
}

struct PageControl: View {
    var numberOfPages: Int
    @Binding var currentPage: Int
    
    var body: some View {
        HStack(spacing: 8) {
            ForEach(0..<numberOfPages) { page in
                Circle()
                    .frame(width: 8, height: 8)
                    .foregroundColor(currentPage == page ? .blue : .white)
            }
        }
    }
}



#Preview {
    PageView()
}
