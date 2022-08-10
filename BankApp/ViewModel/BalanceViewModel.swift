//
//  BalanceViewModel.swift
//  BankApp
//
//  Created by Manuel Martinez on 10/08/22.
//

import Foundation
import Combine

class BalanceViewModel: ObservableObject {
    init() {
        fetchBalance()
    }
    
    let didChange = PassthroughSubject<BalanceViewModel, Never>()
    
    @Published var balances = [Balance]() {
        didSet {
            didChange.send(self)
        }
    }
    
    func fetchBalance() {
        NetworkManager().getBalances(stringUrl: "http://bankapp.endcom.mx/api/bankappTest/saldos") {
            self.balances = $0.saldos
        }
    }
    
}
