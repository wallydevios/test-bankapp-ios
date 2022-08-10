//
//  CardRowView.swift
//  BankApp
//
//  Created by Manuel Martinez on 10/08/22.
//

import SwiftUI

struct CardRowView: View {
    
    let card: Card
    
    var body: some View {
        HStack{
            if card.estado == "Activa" {
                Image("activeCard")
            } else {
                Image("inactiveCard")
            }
            VStack(alignment: .leading){
                Text(card.estado)
                    .font(.system(size: 14, weight: .bold))
                    .foregroundColor(Color("greenLight"))
                Text(card.tarjeta)
                    .font(.system(size: 16, weight: .bold))
                    .foregroundColor(Color("blueDark"))
                Text("Titular")
                    .font(.system(size: 14, weight: .bold))
                    .foregroundColor(Color("greenLight"))
                Text(card.nombre)
                    .font(.system(size: 12, weight: .bold))
                    .foregroundColor(Color("blueDark"))
            }
            Spacer()
            VStack(alignment: .trailing){
                Text("Saldo")
                    .font(.system(size: 14, weight: .bold))
                    .foregroundColor(Color("greenLight"))
                Text("\(card.saldo.formatted(.currency(code: "USD")))")
                    .font(.system(size: 14, weight: .bold))
                    .foregroundColor(Color("blueDark"))
            }
        }
    }
}

struct CardRowView_Previews: PreviewProvider {
    static var previews: some View {
        CardRowView(card: Card(id: 1, tarjeta: "5439 2401 1234 1234", nombre: "Manuel Martínez", saldo: 10000, estado: "Activa", tipo: "Crédito"))
    }
}
