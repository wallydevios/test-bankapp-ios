//
//  AcountViewModel.swift
//  BankApp
//
//  Created by Manuel Martinez on 10/08/22.
//

import Foundation
import Combine

class AcountViewModel: ObservableObject {
    init() {
        fetchAcount()
    }
    
    let didChange = PassthroughSubject<AcountViewModel, Never>()
    
    @Published var acount = [Acount]() {
        didSet {
            didChange.send(self)
        }
    }
    
    func fetchAcount() {
        NetworkManager().getAcount(stringUrl: "http://bankapp.endcom.mx/api/bankappTest/cuenta") {
            self.acount = $0.cuenta
        }
    }
    
}
