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
    
    enum SectionType: CaseIterable {
        case photo
        case info
        case episodes
    }
    
    public let sections = SectionType.allCases
    
    // MARK: - Init 
    
    init(character: RMCharacter) {
        self.character = character
    }
    
    private var requestUrl: URL? {
        return URL(string: character.url)
    }
    
    public var title: String {
        character.name.uppercased()
    }
}
