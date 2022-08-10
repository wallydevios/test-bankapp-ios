//
//  NetworkManager.swift
//  BankApp
//
//  Created by Manuel Martinez on 10/08/22.
//

import Foundation

class NetworkManager{
    func getBalances(stringUrl: String, completion: @escaping(BalanceRequest) ->()) {
        
        guard let url = URL(string: stringUrl) else { fatalError("Error con el link") }
        
        URLSession.shared.dataTask(with: url) { datos, respuesta, error in
            
            guard let data = datos, error == nil, let response = respuesta as? HTTPURLResponse else {
                return
            }
            
            if response.statusCode == 200 {
                print("Conexion exitosa con el servidor")
                do {
                    let balancesResults = try JSONDecoder().decode(BalanceRequest.self, from: data)
                    
                    DispatchQueue.main.async {
                        completion(balancesResults)
                    }
                } catch let error {
                    print(error.localizedDescription)
                    print("Error al decodificar")
                }
            }
        }.resume()
    }
    func getAcount(stringUrl: String, completion: @escaping(AcountRequest) ->()) {
        
        guard let url = URL(string: stringUrl) else { fatalError("Error con el link") }
        
        URLSession.shared.dataTask(with: url) { datos, respuesta, error in
            
            guard let data = datos, error == nil, let response = respuesta as? HTTPURLResponse else {
                return
            }
            
            if response.statusCode == 200 {
                print("Conexion exitosa con el servidor")
                do {
                    let acount = try JSONDecoder().decode(AcountRequest.self, from: data)
                    
                    DispatchQueue.main.async {
                        completion(acount)
                    }
                } catch let error {
                    print(error.localizedDescription)
                    print("Error al decodificar")
                }
            }
        }.resume()
    }
    func getCards(stringUrl: String, completion: @escaping(CardsRequest) ->()) {
        
        guard let url = URL(string: stringUrl) else { fatalError("Error con el link") }
        
        URLSession.shared.dataTask(with: url) { datos, respuesta, error in
            
            guard let data = datos, error == nil, let response = respuesta as? HTTPURLResponse else {
                return
            }
            
            if response.statusCode == 200 {
                print("Conexion exitosa con el servidor")
                do {
                    let cards = try JSONDecoder().decode(CardsRequest.self, from: data)
                    
                    DispatchQueue.main.async {
                        completion(cards)
                    }
                } catch let error {
                    print(error.localizedDescription)
                    print("Error al decodificar")
                }
            }
        }.resume()
    }
    func getMovements(stringUrl: String, completion: @escaping(MovementsRequest) ->()) {
        
        guard let url = URL(string: stringUrl) else { fatalError("Error con el link") }
        
        URLSession.shared.dataTask(with: url) { datos, respuesta, error in
            
            guard let data = datos, error == nil, let response = respuesta as? HTTPURLResponse else {
                return
            }
            
            if response.statusCode == 200 {
                print("Conexion exitosa con el servidor")
                do {
                    let movements = try JSONDecoder().decode(MovementsRequest.self, from: data)
                    
                    DispatchQueue.main.async {
                        completion(movements)
                    }
                } catch let error {
                    print(error.localizedDescription)
                    print("Error al decodificar")
                }
            }
        }.resume()
    }
}
