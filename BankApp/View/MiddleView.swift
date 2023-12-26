//
//  MiddleView.swift
//  BankApp
//
//  Created by Ebuzer Şimşek on 14.12.2023.
//

import SwiftUI

struct MiddleView: View {
    
    @State private var searchText = ""
    @State var index = 1
    
    var body: some View {
        
        NavigationStack {
            
            ZStack {
                Color((Color(red: 19/255, green: 18/255, blue: 27/255)))
                    .ignoresSafeArea()
                
                VStack {
                    
                    Text("İşCep")
                        .font(.title)
                        .foregroundColor(.white)
                        .bold()
                        .padding(.bottom, 16)
                    
                    SearchBar(text: $searchText)
                    HStack {
                        Text("İşCep'te Hayatım")
                            .font(.system(size:16))
                            .bold()
                            .foregroundStyle(.white)
                            .frame(alignment: .leading)
                            .padding()
                        Spacer()
                    }
                    
                    HStack(spacing:25) {
                        
                        MiddleViewButtonView(ButtonIcon: "car", TextColor: .white, iconColor:.blue, text:"Aracım")
                        
                        MiddleViewButtonView(ButtonIcon: "house", TextColor: .white, iconColor:.purple, text:"Evim")
                        
                        MiddleViewButtonView(ButtonIcon: "suitcase", TextColor: .white, iconColor:.yellow, text:"Seyehatim")
                        
                        MiddleViewButtonView(ButtonIcon: "person.2", TextColor: .white, iconColor:.pink, text:"Ailem")
                        
                    }
                    
                    
                    
                NavigationView {
                        List {
                            Section() {
                                ForEach(MiddleViewList.sampleData) { element in
                                    NavigationLink(destination: CardView()) {
                                        HStack {                           
                                            
                                        if element.useSystemImage {
                                            Image(systemName: element.image)
                                                .foregroundStyle(.blue)
                                        } else {
                                            
                                            Image(element.image)
                                                .resizable()
                                                .renderingMode(.template)
                                                .foregroundColor(Color.blue)
                                                .frame(width: 30, height: 30)
                                                .aspectRatio(contentMode: .fit)
                                        }
                                            
                                            Text(element.title)
                                                .foregroundStyle(.white)
                                        }
                                    }
                                    .accentColor(.white)
                                }
                            }
                            .listRowBackground(Color((Color(red: 32/255, green: 34/255, blue: 45/255))))
                            
                            Section(header: Text("")) {
                                ForEach(MiddleViewList.sampleData2) { element in
                                    NavigationLink(destination:CardView()) {
                                        HStack {
                                            Image(systemName: element.image)
                                                .foregroundStyle(.blue)
                                            
                                            Text(element.title)
                                                .foregroundStyle(.white)
                                        }
                                    }
                                    .accentColor(.white)
                                }
                            }
                            .listRowBackground(Color((Color(red: 32/255, green: 34/255, blue: 45/255))))
                            .padding(.bottom, 2)
                        }
                        .listStyle(PlainListStyle())
                        .background(Color((Color(red: 19/255, green: 18/255, blue: 27/255))))
                        
                    }
                    
                    Spacer()
                }
            }
        }
    }
}

struct SearchBar: View {
    @Binding var text: String
    
    var body: some View {
        HStack {
            TextField("İşCep'te Ara", text: $text)
                .padding(8)
                .background((Color(red: 32/255, green: 34/255, blue: 45/255)))
                .cornerRadius(20)
                .padding(.horizontal, 16)
                
        }
    }
}

#Preview {
    MiddleView()
}
