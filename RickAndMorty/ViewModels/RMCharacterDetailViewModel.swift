//  /*
//
//  Project: RickAndMorty
//  File: RMCharacterDetailViewModel.swift
//  Created by: Elaidzha Shchukin
//  Date: 14.05.2024
//
//  */

import Foundation

final class RMCharacterDetailViewModel {
   private let character: RMCharacter
    
    init(character: RMCharacter) {
        self.character = character
    }
    
    public var title: String {
        character.name.uppercased()
    }
}
