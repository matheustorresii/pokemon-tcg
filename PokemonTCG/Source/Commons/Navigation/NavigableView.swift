//
//  NavigableView.swift
//  PokemonTCG
//
//  Created by Matheus Torres on 25/05/24.
//

import Combine
import SwiftUI

protocol NavigableView: View {
    var navigation: PassthroughSubject<FlowNavigationStyle, Never> { get }
}
