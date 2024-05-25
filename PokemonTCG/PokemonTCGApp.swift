//
//  PokemonTCGApp.swift
//  PokemonTCG
//
//  Created by Matheus Torres on 25/05/24.
//

import SwiftUI
import Swinject

@main
struct PokemonTCGApp: App {
    
    // MARK: - PRIVATE PROPERTIES
    
    private let assembler: Assembler
    
    init() {
        assembler = {
            var assemblies = [Assembly]()
            assemblies.append(contentsOf: DependencyGraph.build())
            return Assembler(assemblies)
        }()
    }
    
    // MARK: - BODY
    
    var body: some Scene {
        WindowGroup {
            FlowView(appCoordinator: assembler.resolver.resolveUnwrapping(AppCoordinator.self))
        }
    }
}
