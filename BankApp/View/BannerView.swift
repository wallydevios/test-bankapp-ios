//
//  BannerView.swift
//  BankApp
//
//  Created by Manuel Martinez on 10/08/22.
//

import SwiftUI

struct BannerView: View {
    private let numberFormatter:NumberFormatter
    let title: String
    let amount: Double
    
    var body: some View {
        VStack{
            HStack{
                Text(title)
                    .font(.title3)
                    .fontWeight(.bold)
                    .foregroundColor(Color("blueLight"))
                    .lineLimit(2)
                    .padding(.top)
                    .padding(.leading)
                    
                Spacer()
            }
            Spacer()
            HStack{
                Spacer()
                Text("\(amount.formatted(.currency(code: "USD")))")
                    .font(.title3)
                    .fontWeight(.bold)
                    .foregroundColor(Color("greenLight"))
                    .padding()
            }
        }
        .frame(width: 250, height: 140)
        .background(
            Color("blueDark")
        )
    }
    
    init(title: String, amount: Double){
        self.title = title
        self.amount = amount
        numberFormatter = NumberFormatter()
        numberFormatter.numberStyle = .currency
        numberFormatter.maximumFractionDigits = 2
    }
}

struct BannerView_Previews: PreviewProvider {
    static var previews: some View {
        BannerView(title: "Saldo general en cuentas", amount: 2000)
            .previewLayout(.sizeThatFits)
    }
}


