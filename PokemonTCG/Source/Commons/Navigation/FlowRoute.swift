//
//  FlowRoute.swift
//  PokemonTCG
//
//  Created by Matheus Torres on 25/05/24.
//

import Foundation

enum FlowNavigationStyle {
    case push(FlowRoute)
    case pop
}

enum FlowRoute {
    case home
    
    static var defaultRoute: Self {
        return .home
    }
}
