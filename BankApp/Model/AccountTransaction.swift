//
//  AccountTransaction.swift
//  BankApp
//
//  Created by Ebuzer Şimşek on 18.12.2023.
//



import Foundation

// MARK: - Welcome
struct AccountTranses: Codable {
    let header: Header2
    let data: DataClass2

    enum CodingKeys: String, CodingKey {
        case header = "Header"
        case data = "Data"
    }
}

// MARK: - DataClass
struct DataClass2: Codable {
    let accountTransactions: [AccountTransaction]

    enum CodingKeys: String, CodingKey {
        case accountTransactions = "AccountTransactions"
    }
}

// MARK: - AccountTransaction
struct AccountTransaction: Codable {
    let currencyCode, transactionType, description, amount: String
    let transactionCode, balance, transactionName, transactionDate: String
    let transactionID: String
    let icon : String

    enum CodingKeys: String, CodingKey {
        case currencyCode = "CurrencyCode"
        case transactionType = "TransactionType"
        case description = "Description"
        case amount = "Amount"
        case transactionCode = "TransactionCode"
        case balance = "Balance"
        case transactionName = "TransactionName"
        case transactionDate = "TransactionDate"
        case transactionID = "TransactionId"
        case icon = "Icon"
    }
}

// MARK: - Header
struct Header2: Codable {
    let statusCode, statusDescription, objectID: String

    enum CodingKeys: String, CodingKey {
        case statusCode = "StatusCode"
        case statusDescription = "StatusDescription"
        case objectID = "ObjectID"
    }
}
