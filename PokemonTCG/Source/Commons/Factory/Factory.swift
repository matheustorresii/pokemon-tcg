//
//  Factory.swift
//  PokemonTCG
//
//  Created by Matheus Torres on 25/05/24.
//

import Foundation
import Swinject

final class Factory: FactoryProtocol {
    
    // MARK: - PRIVATE PROPERTIES
    
    private let resolver: Resolver
    
    // MARK: - INITIALIZERS
    
    init(resolver: Resolver) {
        self.resolver = resolver
    }
    
    // MARK: - PUBLIC PROPERTIES
    
    func makeHomeScreen() -> any HomeScreenProtocol {
        return resolver.resolveUnwrapping(HomeScreen<HomeViewModel>.self)
    }
}
