//
//  HomeScreen.swift
//  PokemonTCG
//
//  Created by Matheus Torres on 25/05/24.
//

import Combine
import SwiftUI

struct HomeScreen: NavigableView {
    var navigation: PassthroughSubject<FlowNavigationStyle, Never> = .init()
    
    var body: some View {
        Text("Home")
    }
}
