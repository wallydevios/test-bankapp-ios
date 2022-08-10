//
//  CardsViewModel.swift
//  BankApp
//
//  Created by Manuel Martinez on 10/08/22.
//

import Foundation
import Combine

class CardViewModel: ObservableObject {
    init() {
        fetchCards()
    }
    
    let didChange = PassthroughSubject<CardViewModel, Never>()
    
    @Published var cards = [Card]() {
        didSet {
            didChange.send(self)
        }
    }
    
    func fetchCards() {
        NetworkManager().getCards(stringUrl: "http://bankapp.endcom.mx/api/bankappTest/tarjetas") {
            self.cards = $0.tarjetas
        }
    }
    
}
