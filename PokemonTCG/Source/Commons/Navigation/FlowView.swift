//
//  FlowView.swift
//  PokemonTCG
//
//  Created by Matheus Torres on 25/05/24.
//

import SwiftUI

struct FlowView: View {
    
    // MARK: - PRIVATE PROPERTIES
    
    @StateObject private var appCoordinator = AppCoordinator(path: .init())
    
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
