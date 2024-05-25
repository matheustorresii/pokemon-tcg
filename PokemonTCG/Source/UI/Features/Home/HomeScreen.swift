//
//  HomeScreen.swift
//  PokemonTCG
//
//  Created by Matheus Torres on 25/05/24.
//

import Combine
import SwiftUI

struct HomeScreen<ViewModel>: HomeScreenProtocol where ViewModel: HomeViewModelProtocol {
    
    // MARK: - PUBLIC PROPERTIES
    
    var navigation: PassthroughSubject<FlowNavigationStyle, Never> = .init()
    @ObservedObject var viewModel: ViewModel
    
    // MARK: - INITIALIZERS
    
    init(viewModel: ViewModel) {
        self.viewModel = viewModel
    }
    
    // MARK: - BODY
    
    var body: some View {
        content()
    }
    
    // MARK: - VIEW BUILDERS
    
    @ViewBuilder
    private func content() -> some View {
        switch viewModel.viewState.value {
        case .idle:
            Text("Idle")
        case .content:
            Text("Content")
        case .error:
            Text("Error")
        case .loading:
            Text("Loading")
        }
    }
}
