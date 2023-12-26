//
//  MiddleViewList.swift
//  BankApp
//
//  Created by Ebuzer Şimşek on 15.12.2023.
//

import Foundation

struct MiddleViewList: Identifiable {
    var id = UUID()
    var title: String
    var image: String
    var useSystemImage: Bool 

    static var sampleData: [MiddleViewList] = [
        MiddleViewList(title: "Para Aktar", image: "coinSending", useSystemImage: false),
        MiddleViewList(title: "Ödemeler", image: "cart", useSystemImage: true),
        MiddleViewList(title: "Para Çek/Yatır", image: "atm", useSystemImage: false),
        MiddleViewList(title: "Kampanyalar", image: "Announce", useSystemImage: false)
    ]

    static var sampleData2: [MiddleViewList] = [
        MiddleViewList(title: "Hesaplar", image: "cart", useSystemImage: true),
        MiddleViewList(title: "Kartlar", image: "creditcard", useSystemImage: true),
        MiddleViewList(title: "Krediler", image: "menucard", useSystemImage: true),
        MiddleViewList(title: "Yatırım", image: "cart", useSystemImage: true),
        MiddleViewList(title: "İşCep'e Özel Fırsatlar", image: "basket", useSystemImage: true),
        MiddleViewList(title: "Bireysel Emeklilik", image: "cart", useSystemImage: true)
    ]
}
