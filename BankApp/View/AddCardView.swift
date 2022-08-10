//
//  AddCardView.swift
//  BankApp
//
//  Created by Manuel Martinez on 10/08/22.
//

import SwiftUI

struct AddCardView: View {
    
    @State private var cardNumber: String = ""
    @State private var acountName: String = ""
    @State private var issure: String = ""
    @State private var cardName: String = ""
    @State private var brand: String = ""
    @State private var status: String = ""
    @State private var balance: String = ""
    @State private var type: String = ""
    
    var body: some View {
        NavigationView{
            VStack{
                Image(systemName: "creditcard.fill")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 45)
                    .foregroundColor(Color("greenLight"))
                    .shadow(color: .black.opacity(0.2), radius: 3.0, x: 0.0, y: 0.0)
                Text("Asociar Tarjeta")
                    .font(.system(size: 18, weight: .regular))
                    .foregroundColor(Color("blueDark"))
                VStack(spacing: 15){
                    TextField("Número de Tarjeta", text: $cardNumber)
                        .fieldModifier()
                    HStack{
                        TextField("Cuenta", text: $acountName)
                            .fieldModifierHorizontal()
                        TextField("Issure", text: $issure)
                            .fieldModifierHorizontal()
                    }
                    .padding(.horizontal)
                    TextField("Nombre de Tarjeta", text: $cardName)
                        .fieldModifier()
                    HStack{
                        TextField("Marca", text: $brand)
                            .fieldModifierHorizontal()
                        TextField("Estatus", text: $status)
                            .fieldModifierHorizontal()
                    }
                    .padding(.horizontal)
                    TextField("Tipo de cuenta", text: $type)
                        .fieldModifier()
                }
                .padding(.top, 30)
                    
                
                Spacer()
                HStack{
                    Button {
                        print("a")
                    } label: {
                        Text("Cancelar")
                            .foregroundColor(.white)
                            .font(.system(size: 16, weight: .bold))
                            .padding()
                            .background(
                                Color.gray
                            )
                            .cornerRadius(10)
                    }
                    
                    Button {
                        print("a")
                    } label: {
                        Text("Agregar")
                            .foregroundColor(.white)
                            .font(.system(size: 16, weight: .bold))
                            .padding()
                            .background(
                                Color("greenLight")
                            )
                            .cornerRadius(10)
                    }

                }
                
                Spacer()
            }
        }
        .navigationTitle("Agregar Tarjeta")
    }
}

struct AddCardView_Previews: PreviewProvider {
    static var previews: some View {
        AddCardView()
    }
}
