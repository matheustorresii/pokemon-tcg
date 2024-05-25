//
//  HomeScreenProtocol.swift
//  PokemonTCG
//
//  Created by Matheus Torres on 25/05/24.
//

import Foundation

protocol HomeScreenProtocol: NavigableView {
    associatedtype ViewModel: HomeViewModelProtocol
    
    var viewModel: ViewModel { get }
}
