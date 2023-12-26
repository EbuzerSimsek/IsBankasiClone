//
//  Pages.swift
//  BankApp
//
//  Created by Ebuzer Şimşek on 1.12.2023.
//

import Foundation

struct Page : Identifiable,Hashable,Equatable{
    
    var name : String
    var image : String
    var id : UUID
    
    
    
    static var sample : [Page] = [
                                  Page(name: "1", image: "kampanya1", id: UUID()),
                                  Page(name: "2", image: "kampanya2", id: UUID()),
                                  Page(name: "3", image: "kampanya3", id: UUID())
                                 ]
}
