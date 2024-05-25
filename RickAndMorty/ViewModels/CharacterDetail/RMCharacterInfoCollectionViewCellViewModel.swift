//  /*
//
//  Project: RickAndMorty
//  File: RMCharacterInfoCollectionViewCellViewModel.swift
//  Created by: Elaidzha Shchukin
//  Date: 22.05.2024
//
//  */

import Foundation

final class RMCharacterInfoCollectionViewCellViewModel {
    private let type: `Type`
    
    public let value: String
    public var title: String {
        self.type.displayTitle
    }
    
    enum `Type` {
        case status
        case gender
        case type
        case species
        case origin
        case created
        case location
        case episodeCount
        
        var displayTitle: String {
            switch self {
            case .status:
                return "Some"
            case .gender:
                return "Some"
            case .type:
                return "Some"
            case .species:
                return "Some"
            case .origin:
                return "Some"
            case .created:
                return "Some"
            case .location:
                return "Some"
            case .episodeCount:
                return "Some"
            }
        }
    }
    
    init(type: `Type`, value: String) {
        self.value = value
        self.type = type
    }
}
