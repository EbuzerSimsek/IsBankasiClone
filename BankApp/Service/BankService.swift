//
//  BankService.swift
//  BankApp
//
//  Created by Ebuzer Şimşek on 21.12.2023.
//

import Foundation

protocol BankService {
    
    func getAccountDetails<T: Codable>(url:URL,completion: @escaping (Result<T, ErrorHandler>) -> Void)
    
}
