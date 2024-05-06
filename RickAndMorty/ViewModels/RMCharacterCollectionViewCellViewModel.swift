//  /*
//
//  Project: RickAndMorty
//  File: RMCharacterCollectionViewCellViewModel.swift
//  Created by: Elaidzha Shchukin
//  Date: 06.05.2024
//
//  */

import Foundation

final class RMCharacterCollectionViewCellViewModel {
    
    public let characterName: String
    private let characterStatus: RMCharacterStatus
    private let characterImageUrl: URL?
    
    // MARK: - Init
    init(
        characterName: String,
        characterStatus: RMCharacterStatus,
        characterImageUrl: URL?
    ) {
        self.characterName = characterName
        self.characterStatus = characterStatus
        self.characterImageUrl = characterImageUrl
       
    }
    
    public var characterStatusText: String {
        return characterStatus.rawValue
    }
}
