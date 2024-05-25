//
//  FactoryProtocol.swift
//  PokemonTCG
//
//  Created by Matheus Torres on 25/05/24.
//

import Foundation

protocol FactoryProtocol {
    func makeHomeScreen() -> any HomeScreenProtocol
}
