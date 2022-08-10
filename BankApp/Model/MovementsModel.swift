//
//  MovementsModel.swift
//  BankApp
//
//  Created by Manuel Martinez on 10/08/22.
//

import Foundation

struct MovementsRequest: Codable {
    let movimientos: [Movement]
}

struct Movement: Codable, Identifiable {
    let id: Int
    let fecha: String
    let descripcion: String
    let monto: String
    let tipo: String
}
