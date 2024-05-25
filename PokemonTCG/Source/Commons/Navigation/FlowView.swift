//
//  FlowView.swift
//  PokemonTCG
//
//  Created by Matheus Torres on 25/05/24.
//

import SwiftUI

struct FlowView<AppCoordinator>: View where AppCoordinator: AppCoordinatorProtocol {
    
    // MARK: - PRIVATE PROPERTIES
    
    @StateObject private var appCoordinator: AppCoordinator
    
    init(appCoordinator: AppCoordinator) {
        self._appCoordinator = StateObject(wrappedValue: appCoordinator)
    }
    
    // MARK: - BODY
    
    var body: some View {
        NavigationStack(path: $appCoordinator.path) {
            appCoordinator.build(route: .defaultRoute)
                .navigationDestination(for: FlowRoute.self) { route in
                    appCoordinator.build(route: route)
                }
        }
        .environmentObject(appCoordinator)
    }
}
