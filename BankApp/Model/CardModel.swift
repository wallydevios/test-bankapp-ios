//
//  CardModel.swift
//  BankApp
//
//  Created by Manuel Martinez on 10/08/22.
//

import Foundation

struct CardsRequest: Codable {
    let tarjetas: [Card]
}

struct Card: Codable, Identifiable {
    let id: Int
    let tarjeta: String
    let nombre: String
    let saldo: Int
    let estado: String
    let tipo: String
}
