//
//  CreditCard.swift
//  BankApp
//
//  Created by Ebuzer Şimşek on 25.12.2023.
//

import Foundation

// MARK: - Welcome
struct CreditCard: Codable {
    let header: CreditCardHeader
    let data: CreditCardData

    enum CodingKeys: String, CodingKey {
        case header = "Header"
        case data = "Data"
    }
}

// MARK: - DataClass
struct CreditCardData: Codable {
    let creditCardInfo: CreditCardInfo

    enum CodingKeys: String, CodingKey {
        case creditCardInfo = "CreditCardInfo"
    }
}

// MARK: - CreditCardInfo
struct CreditCardInfo: Codable {
    let cardNumber, nextLastPaymentDate: String
    let totalLimit, remainingMinimumPaymentAmountDomestic, totalTermDebtBalanceAbroad: Int
    let mainCardNumber, lastPaymentDate, statementDate: String
    let point: Double
    let cardStatus, cardOwnerNameSurname, cardType: String
    let minimumPaymentAmountDomestic: Int
    let nextStatementDate: String
    let termDebtBalanceDomestic, totalTermDebtBalanceDomestic: Double
    let cardProductName, branchName: String
    let interestRate: Int
    let branchCode: String
    let remainingDebtDomestic, remainingLimit: Double

    enum CodingKeys: String, CodingKey {
        case cardNumber = "CardNumber"
        case nextLastPaymentDate = "NextLastPaymentDate"
        case totalLimit = "TotalLimit"
        case remainingMinimumPaymentAmountDomestic = "RemainingMinimumPaymentAmountDomestic"
        case totalTermDebtBalanceAbroad = "TotalTermDebtBalanceAbroad"
        case mainCardNumber = "MainCardNumber"
        case lastPaymentDate = "LastPaymentDate"
        case statementDate = "StatementDate"
        case point = "Point"
        case cardStatus = "CardStatus"
        case cardOwnerNameSurname = "CardOwnerNameSurname"
        case cardType = "CardType"
        case minimumPaymentAmountDomestic = "MinimumPaymentAmountDomestic"
        case nextStatementDate = "NextStatementDate"
        case termDebtBalanceDomestic = "TermDebtBalanceDomestic"
        case totalTermDebtBalanceDomestic = "TotalTermDebtBalanceDomestic"
        case cardProductName = "CardProductName"
        case branchName = "BranchName"
        case interestRate = "InterestRate"
        case branchCode = "BranchCode"
        case remainingDebtDomestic = "RemainingDebtDomestic"
        case remainingLimit = "RemainingLimit"
    }
}

// MARK: - Header
struct CreditCardHeader: Codable {
    let statusCode, statusDescription, objectID: String

    enum CodingKeys: String, CodingKey {
        case statusCode = "StatusCode"
        case statusDescription = "StatusDescription"
        case objectID = "ObjectID"
    }
}


