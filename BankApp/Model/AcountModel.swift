//
//  AcountModel.swift
//  BankApp
//
//  Created by Manuel Martinez on 10/08/22.
//

import Foundation

struct AcountRequest: Codable {
    let cuenta: [Acount]
}

struct Acount: Codable, Identifiable {
    let id: Int
    let cuenta: Int
    let nombre: String
    let ultimaSesion: String
}
