//  /*
//
//  Project: RickAndMorty
//  File: RMCharacterInfoCollectionViewCellViewModel.swift
//  Created by: Elaidzha Shchukin
//  Date: 22.05.2024
//
//  */

import UIKit

final class RMCharacterInfoCollectionViewCellViewModel {
    private let type: `Type`
    private let value: String
    
    public var title: String {
        type.displayTitle
    }
    
    public var displayValue: String {
        if value.isEmpty { return "None"}
        return value
    }
    
    public var iconImage: UIImage? {
        return type.iconImage
    }
    
    public var tintColor: UIColor {
        return type.tintColor
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
        
        var tintColor: UIColor {
            switch self {
            case .status:
                return .systemYellow
            case .gender:
                return .systemBrown
            case .type:
                return .systemYellow
            case .species:
                return .systemBrown
            case .origin:
                return .systemYellow
            case .created:
                return .systemBrown
            case .location:
                return .systemYellow
            case .episodeCount:
                return .systemBrown
            }
        }
        
        var iconImage: UIImage? {
            switch self {
            case .status:
                return UIImage(systemName: "person")
            case .gender:
                return UIImage(systemName: "person")
            case .type:
                return UIImage(systemName: "person")
            case .species:
                return UIImage(systemName: "person")
            case .origin:
                return UIImage(systemName: "person")
            case .created:
                return UIImage(systemName: "person")
            case .location:
                return UIImage(systemName: "person")
            case .episodeCount:
                return UIImage(systemName: "person")
            }
        }
        
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
