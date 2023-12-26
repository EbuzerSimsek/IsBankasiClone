


import Foundation


// MARK: - Welcome
struct AccountResponse: Codable {
    let header: Header
    let data: DataClass

    enum CodingKeys: String, CodingKey {
        case header = "Header"
        case data = "Data"
    }
}

// MARK: - DataClass
struct DataClass: Codable {
    var accountInfo: AccountInfo

    enum CodingKeys: String, CodingKey {
        case accountInfo = "AccountInfo"
    }
}

// MARK: - AccountInfo
struct AccountInfo: Codable {
    var currencyCode, lastTransactionDate, accountStatus, openingDate: String
    var iban, customerNumber, remainingBalance, balance: String
    var accountType, branchCode, accountNumber: String

    enum CodingKeys: String, CodingKey {
        case currencyCode = "CurrencyCode"
        case lastTransactionDate = "LastTransactionDate"
        case accountStatus = "AccountStatus"
        case openingDate = "OpeningDate"
        case iban = "IBAN"
        case customerNumber = "CustomerNumber"
        case remainingBalance = "RemainingBalance"
        case balance = "Balance"
        case accountType = "AccountType"
        case branchCode = "BranchCode"
        case accountNumber = "AccountNumber"
    }
}

// MARK: - Header
struct Header: Codable {
    let statusCode, statusDescription, objectID: String

    enum CodingKeys: String, CodingKey {
        case statusCode = "StatusCode"
        case statusDescription = "StatusDescription"
        case objectID = "ObjectID"
    }
}
