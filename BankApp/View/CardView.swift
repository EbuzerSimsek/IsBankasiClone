//
//  CardView.swift
//  BankApp
//
//  Created by Ebuzer Şimşek on 29.11.2023.
//

import SwiftUI

struct CardView: View {
    var body: some View {
        VStack {
            LinearGradient(
                colors: [
                    Color(.blue),
                    Color(.purple),
                    Color(.systemPink),
                    Color(.yellow)
                ], startPoint: .bottomLeading, endPoint: .topTrailing
            )
            .cornerRadius(20)
            .frame(width: 360, height: 200, alignment: .center)
            .padding()
            
        }
    }
}
#Preview {
    CardView()
}
