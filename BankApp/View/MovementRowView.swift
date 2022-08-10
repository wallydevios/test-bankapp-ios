//
//  MovementRowView.swift
//  BankApp
//
//  Created by Manuel Martinez on 10/08/22.
//

import SwiftUI

struct MovementRowView: View {
    
    let movement: Movement
    
    var body: some View {
        VStack(alignment: .leading){
            HStack{
                Text(getDescription(of: movement.descripcion).uppercased())
                    .font(.system(size: 12, weight: .bold))
                Spacer()
                Text(getAmount(of: movement))
                    .font(.system(size: 12, weight: .bold))
            }
            Text(movement.fecha)
                .font(.system(size: 10, weight: .regular))
            Divider()
        }
    }
    
    func getAmount(of movement: Movement) -> String {
        let number = Float(movement.monto)
        let currency = number!.formatted(.currency(code: "USD"))
        var amount = ""
        
        if movement.tipo == "abono" {
            amount = "\(currency)"
        } else {
            amount = "-\(currency)"
        }
        
        return amount
    }
    
    func getDescription(of text: String) -> String {
        let endIndex = text.firstIndex(of: " ")!
        let substring = String(text[...endIndex])
        return substring
    }
}

struct MovementRowView_Previews: PreviewProvider {
    static var previews: some View {
        MovementRowView(movement: Movement(id: 1, fecha: "01/07/2019", descripcion: "Lorem ipsum dolor sit amet, consectetur adipiscing elit.", monto: "30.00", tipo: "abono"))
            .previewLayout(.sizeThatFits)
    }
}
