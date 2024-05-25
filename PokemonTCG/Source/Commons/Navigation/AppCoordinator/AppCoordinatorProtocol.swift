//
//  AppCoordinatorProtocol.swift
//  PokemonTCG
//
//  Created by Matheus Torres on 25/05/24.
//

import Combine
import SwiftUI

protocol AppCoordinatorProtocol: ObservableObject {
    var path: NavigationPath { get set }
    
    func build(route: FlowRoute) -> AnyView
}
