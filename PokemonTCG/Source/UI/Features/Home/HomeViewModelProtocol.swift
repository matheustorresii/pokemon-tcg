//
//  HomeViewModelProtocol.swift
//  PokemonTCG
//
//  Created by Matheus Torres on 25/05/24.
//

import Combine
import Foundation

protocol HomeViewModelProtocol: ObservableObject {
    
    // MARK: - PROPERTIES
    
    var viewState: CurrentValueSubject<HomeViewState, Never> { get }
}
