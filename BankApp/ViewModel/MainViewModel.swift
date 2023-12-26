//
//  MainViewModel.swift
//  BankApp
//
//  Created by Ebuzer Şimşek on 17.12.2023.
//

import Foundation

class MainViewModel : ObservableObject {
    
    @Published var accountInfo : AccountInfo?
    @Published var accountTransactions : [AccountTransaction]?
    @Published var dropMenus: [DropMenu]?
    @Published var creditCard : CreditCardInfo?
    private var accountService = AccountService()
    
    
    
    
    init() {
            getAccountInfo()
            getTransactionsInfo()
            getCreditCardInfo()
        }
        
    
    
    private func getCreditCardInfo() {
        
        accountService.getAccountDetails(url: URL(string: "http://127.0.0.1:8080/CreditCard.json")!) { (result:
           Result<CreditCard, ErrorHandler>) in
            switch result {
            case .success(let creditCard):
                let creditCardInfo = creditCard
                self.creditCard = creditCardInfo.data.creditCardInfo
            case .failure(let error):
                print(error)
            }
        }
        
    }
    
    
    
    private func getTransactionsInfo() {
        
        accountService.getAccountDetails(url:URL(string: "http://127.0.0.1:8080/AccountTransaction.json")!) { (result: Result<AccountTranses, ErrorHandler>) in
            switch result {
            case .failure(let error):
                print(error.localizedDescription)
            case .success(let transactions):
                self.dropMenus = transactions.data.accountTransactions.map { transaction in
                    DropMenu(title: transaction.transactionName, image: transaction.icon, price: "\(transaction.amount) TL")
                }
            }
        }
        
    }
    
    
    
    
   private func getAccountInfo() {
       
       accountService.getAccountDetails(url: URL(string: "http://127.0.0.1:8080/JsonFiles.json")!) { (result: Result<AccountResponse, ErrorHandler>) in
           switch result {
           case .success(let accountResponse):
               let accountInfo = accountResponse.data.accountInfo
               self.accountInfo = accountInfo
           case .failure(let error):
               
               print("Error: \(error)")
           }
       }
    }
    
}
