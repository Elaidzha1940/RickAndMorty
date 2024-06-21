//  /*
//
//  Project: RickAndMorty
//  File: RMSearchInputViewModel.swift
//  Created by: Elaidzha Shchukin
//  Date: 18.06.2024
//
//  */
  
import Foundation

final class RMSearchInputViewModel {
    private let type: RMSearchViewController.Config.`Type`
    
    enum DynamicOption {
        case status
        case gender
        case locationType
    }
    
    init(type: RMSearchViewController.Config.`Type`) {
        self.type = type
    }
    
    // MARK: - Public
    
//case character // name | status | gender
//case episode // name |
//case location // name | type

    
    public var hasDynamicOptions: Bool {
        return self.type {
        case .character, .location:
            return true
        case .episode:
            return false
        }
    }
}
