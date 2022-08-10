//
//  BalanceModel.swift
//  BankApp
//
//  Created by Manuel Martinez on 10/08/22.
//

import Foundation

struct BalanceRequest: Codable {
    let saldos: [Balance]
}

struct Balance: Codable, Identifiable{
    let id: Int
    let cuenta: Int
    let saldoGeneral: Double
    let ingresos: Double
    let gastos: Double
}
