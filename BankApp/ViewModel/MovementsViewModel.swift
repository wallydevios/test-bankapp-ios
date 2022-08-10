//
//  MovementsViewModel.swift
//  BankApp
//
//  Created by Manuel Martinez on 10/08/22.
//

import Foundation
import Combine

class MovementViewModel: ObservableObject {
    init() {
        fetchMovements()
    }
    
    let didChange = PassthroughSubject<MovementViewModel, Never>()
    
    @Published var movements = [Movement]() {
        didSet {
            didChange.send(self)
        }
    }
    
    func fetchMovements() {
        NetworkManager().getMovements(stringUrl: "http://bankapp.endcom.mx/api/bankappTest/movimientos") {
            self.movements = $0.movimientos
        }
    }
    
}
