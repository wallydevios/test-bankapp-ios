//
//  HomeView.swift
//  BankApp
//
//  Created by Manuel Martinez on 10/08/22.
//

import SwiftUI

struct HomeView: View {
    
    @ObservedObject var balanceModel = BalanceViewModel()
    @ObservedObject var acountModel = AcountViewModel()
    @ObservedObject var cardsModel = CardViewModel()
    @ObservedObject var movementsModel = MovementViewModel()
    
    var body: some View {
        NavigationView {
            VStack {
                Image("appicon")
                    .padding(.bottom, 4)
                // User Bar
                HStack {
                    Text(acountModel.acount.first?.nombre ?? "User name")
                        .font(.system(size: 16))
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                    Text(acountModel.acount.first?.ultimaSesion ?? "Last Conection")
                        .font(.system(size: 16))
                        .fontWeight(.bold)
                        .padding(.horizontal)
                        .foregroundColor(Color("greenLight"))
                        .lineLimit(1)
                    
                    Spacer()
                }
                .padding()
                .background(
                    Color("blueDark")
                )
                // Mis cuentas / Enviar Dinero
                HStack{
                    Text("Mis Cuentas")
                        .underline()
                        .font(.title3)
                        .fontWeight(.bold)
                        .padding(.horizontal)
                        .foregroundColor(Color("blueLight"))
                    Text("Enviar Dinero")
                        .underline()
                        .font(.title3)
                        .fontWeight(.bold)
                        .padding(.horizontal)
                        .foregroundColor(.gray)
                    Spacer()
                }
                .padding(.vertical)
                // Banners
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack {
                        BannerView(title: "Saldo general en cuentas", amount: balanceModel.balances.first?.saldoGeneral ?? 0.0)
                        BannerView(title: "Total de ingresos", amount: balanceModel.balances.first?.ingresos ?? 0.0)
                        BannerView(title: "Gastos", amount: balanceModel.balances.first?.gastos ?? 0.0)
                    }
                    .padding(.horizontal)
                    .padding(.bottom, 10)
                }
                NavigationLink("+ Agregar una tarjeta de débito o crédito", destination: AddCardView())
                
                ScrollView{
                    if cardsModel.cards.isEmpty {
                        ProgressView()
                    } else {
                        ForEach(cardsModel.cards){ card in
                            CardRowView(card: card)
                        }
                        .padding(.trailing)
                    }
                    
                    if movementsModel.movements.isEmpty {
                        ProgressView()
                    } else {
                        VStack(alignment: .leading) {
                            Text("Movimientos Recibidos")
                                .font(.system(size: 14, weight: .bold ))
                                .foregroundColor(Color("blueDark"))
                            
                            ForEach(movementsModel.movements.prefix(3)){ mv in
                                MovementRowView(movement: mv)
                                    .padding(.horizontal)
                            }
                            
                            HStack{
                                Image(systemName: "list.bullet.rectangle.portrait.fill")
                                Text("Ver todos los movimientos")
                            }
                            .foregroundColor(Color("blueLight"))
                        }
                        .padding()
                        .background(
                            Color("grayLight")
                        )
                        .cornerRadius(10)
                        .shadow(color: .black.opacity(0.2), radius: 3.0, x: 0.0, y: 0.0)
                        .padding()
                    }
                }
                Spacer()
            }
            .navigationBarHidden(true)
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
