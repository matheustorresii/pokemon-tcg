//
//  HomeViewModel.swift
//  PokemonTCG
//
//  Created by Matheus Torres on 25/05/24.
//

import Combine
import Foundation

final class HomeViewModel: HomeViewModelProtocol {
    
    // MARK: - PUBLIC PROPERTIES
    
    @Published var viewState: CurrentValueSubject<HomeViewState, Never> = .init(.idle)
}
