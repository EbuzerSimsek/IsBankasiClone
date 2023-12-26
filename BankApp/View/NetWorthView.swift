//
//  NetWorthView.swift
//  BankApp
//
//  Created by Ebuzer Şimşek on 17.12.2023.
//

import SwiftUI
import Charts

struct NetWorthView: View {
    var body: some View {
        
        let chartData : [ChartData] = [
            
            
            .init(name: "İş bankası", value: 500),
            .init(name: "Debt", value: 1200)
            
        ]
        
        
        
        ZStack {
            CardView()
            
            HStack {
                
                
                
                VStack(spacing:90) {
                    VStack {
                        Text("Net Varlık")
                            .foregroundStyle(.white)
                            .bold()
                        Text("-1.200,32 TL")
                            .foregroundStyle(.white)
                            .bold()
                    }
                    .frame(alignment: .leading)
                    
                    HStack(spacing:80) {
                        
                        VStack {
                            
                            HStack {
                                Circle().frame(width: 10, height: 10)
                                    .foregroundStyle(Color(red: 20/255, green: 220/255, blue: 254/255))
                                Text("İş Bankası")
                                    .foregroundStyle(.white)
                                    .frame(width: 90, height: 15,alignment: .leading)
                            }
                            
                            
                            
                            HStack {
                                Circle().frame(width: 10, height: 10)
                                    .foregroundStyle(Color(red: 254/255, green: 167/255, blue: 42/255))
                                Text("Borçlar")
                                    .foregroundStyle(.white)
                                    .frame(width: 90, height: 15,alignment: .leading)
                                    
                            }
                            
                        }
                        
                        
                        
                        
                        
                    }
                    
                    
                }
                
                
                
                HStack {
                    VStack {
                        
                        Text("10.61 TL")
                            .foregroundStyle(.white)
                            .bold()
                        Text("10.61 TL")
                            .foregroundStyle(.white)
                            .bold()
                        
                    }.padding(.top,130)
                    
                    GraphView(isBankasi: chartData.first!.value, debt: chartData.last!.value)
                        
                }.padding(.leading,40)
                    
                
            }
        }
    }
}


struct ChartData : Identifiable {
    let id = UUID()
    let name : String
    let value : Float
}



#Preview {
    NetWorthView()
}
