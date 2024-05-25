//
//  AppCoordinator.swift
//  PokemonTCG
//
//  Created by Matheus Torres on 25/05/24.
//

import Combine
import SwiftUI

final class AppCoordinator: ObservableObject {
    
    // MARK: - PUBLIC PROPERTIES
    
    @Published var path: NavigationPath
    
    // MARK: - PRIVATE PROPERTIES
    
    private var cancellables = Set<AnyCancellable>()
    
    // MARK: - INITIALIZERS
    
    init(path: NavigationPath) {
        self.path = path
    }
    
    // MARK: - PUBLIC METHODS
    
    @ViewBuilder
    func build(route: FlowRoute) -> some View {
        viewFor(route: route).toAny()
    }
    
    // MARK: - PRIVATE METHODS
    
    private func viewFor(route: FlowRoute) -> any NavigableView {
        let view: any NavigableView = switch route {
            case .home: HomeScreen()
        }
        bind(view: view)
        return view
    }
    
    private func navigate(_ style: FlowNavigationStyle) {
        switch style {
        case .push(let route):
            path.append(route)
        case .pop:
            path.removeLast()
        }
    }
    
    private func bind(view: any NavigableView) {
        view.navigation
            .receive(on: DispatchQueue.main)
            .sink { [weak self] navigation in
                self?.navigate(navigation)
            }.store(in: &cancellables)
    }
}
