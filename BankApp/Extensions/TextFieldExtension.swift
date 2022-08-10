//
//  TextFieldExtension.swift
//  BankApp
//
//  Created by Manuel Martinez on 10/08/22.
//

import SwiftUI

extension TextField{
    func fieldModifier() -> some View {
        self
            .padding()
            .background(
                Color("grayLight")
            )
            .foregroundColor(Color("greenLight"))
            .cornerRadius(10)
            .overlay(RoundedRectangle(cornerRadius: 10)
                .stroke(Color("greenLight"), lineWidth: 2).shadow(color: .white, radius: 6))
            .padding(.horizontal)
    }
}

extension TextField{
    func fieldModifierHorizontal() -> some View {
        self
            .padding()
            .background(
                Color("grayLight")
            )
            .foregroundColor(Color("greenLight"))
            .cornerRadius(10)
            .overlay(RoundedRectangle(cornerRadius: 10)
                .stroke(Color("greenLight"), lineWidth: 2).shadow(color: .white, radius: 6))
            
    }
}
