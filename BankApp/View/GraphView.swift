//
//  GraphView.swift
//  BankApp
//
//  Created by Ebuzer Şimşek on 21.12.2023.
//

import SwiftUI
import Charts

struct GraphView: View {
    
    @State var isBankasi : Float
    @State var debt : Float
    
    var body: some View {
        
        Chart {
            
             BarMark(x: .value("type", "isBankasi"), y: .value("value", isBankasi))
                 .cornerRadius(8)
                 .foregroundStyle(Color(red: 20/255, green: 220/255, blue: 254/255))
            
            
            
            BarMark(x: .value("type", "debt"), y: .value("value", debt))
                .foregroundStyle(Color(red: 254/255, green: 167/255, blue: 42/255))
                .cornerRadius(8)
                
          
            
        }
        .frame(width: 110,height: 170)
        .aspectRatio(contentMode: .fit)
        .chartXAxis(.hidden)
        .chartYAxis(.hidden)
            }
}

#Preview {
    GraphView(isBankasi: 1.5, debt: 1)
}
