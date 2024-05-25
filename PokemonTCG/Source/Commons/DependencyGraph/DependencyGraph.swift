//
//  DependencyGraph.swift
//  PokemonTCG
//
//  Created by Matheus Torres on 25/05/24.
//

import Swinject

final class DependencyGraph {
    static func build() -> [Assembly] {
        return [
            ContainerAssembly()
        ]
    }
}
