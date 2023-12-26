//
//  Service.swift
//  BankApp
//
//  Created by Ebuzer Şimşek on 4.12.2023.
//

import Foundation

enum ErrorHandler: Error {
    case urlError
    case responseError
    case jsonError
}

class AccountService : BankService {
    

    func getAccountDetails<T: Codable>(url:URL,completion: @escaping (Result<T, ErrorHandler>) -> Void) {
        
        URLSession.shared.dataTask(with: url) { data, response, error in
            if let error = error {
                print("URL Session Error: \(error)")
                completion(.failure(.urlError))
                return
            }
            
            guard let httpResponse = response as? HTTPURLResponse else {
                completion(.failure(.responseError))
                return
            }
            
            print("HTTP Status Code: \(httpResponse.statusCode)")
            
            guard httpResponse.statusCode == 200 else {
                print("Unexpected HTTP Status Code: \(httpResponse.statusCode)")
                completion(.failure(.responseError))
                return
            }
            
            guard let data = data else {
                completion(.failure(.responseError))
                return
            }
            
            do {
                let decodedData = try JSONDecoder().decode(T.self, from: data)
                completion(.success(decodedData))
            } catch {
                print("JSON Decode Error: \(error)")
                completion(.failure(.jsonError))
            }
        }.resume()
    }
}
