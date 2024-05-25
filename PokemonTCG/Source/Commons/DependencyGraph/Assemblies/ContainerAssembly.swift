//
//  ContainerAssembly.swift
//  PokemonTCG
//
//  Created by Matheus Torres on 25/05/24.
//

import Foundation
import Swinject

class ContainerAssembly: Assembly {
    func assemble(container: Container) {
        registerFactory(container)
        registerAppCoordinator(container)
        registerScreens(container)
    }
    
    private func registerScreens(_ container: Container) {
        registerHomeScreen(container)
    }
    
    // MARK: - FACTORY
    
    private func registerFactory(_ container: Container) {
        container.register(FactoryProtocol.self) { resolver in
            return Factory(resolver: resolver)
        }
    }
    
    // MARK: - APP COORDINATOR
    
    private func registerAppCoordinator(_ container: Container) {
        container.register(AppCoordinator.self) { resolver in
            let factory = resolver.resolveUnwrapping(FactoryProtocol.self)
            return AppCoordinator(path: .init(), factory: factory)
        }
    }
    
    // MARK: - SCREENS
    
    private func registerHomeScreen(_ container: Container) {
        container.register(HomeViewModel.self) { _ in
            return HomeViewModel()
        }
        
        container.register(HomeScreen.self) { resolver in
            let viewModel = resolver.resolveUnwrapping(HomeViewModel.self)
            return HomeScreen(viewModel: viewModel)
        }
    }
}
