//
//  String+Extensions.swift
//  PokemonTCG
//
//  Created by Matheus Torres on 25/05/24.
//

import Foundation

extension String {
    static var empty: String {
        return ""
    }
    
    func localized() -> String {
        return NSLocalizedString(self, comment: .empty)
    }
    
    func localized(params: CVarArg...) -> String {
        return String.localizedStringWithFormat(NSLocalizedString(self, comment: .empty), params)
    }
}
