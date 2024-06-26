//  /*
//
//  Project: RickAndMorty
//  File: RMCharacterStatus.swift
//  Created by: Elaidzha Shchukin
//  Date: 27.04.2024
//
//  */

import Foundation

enum RMCharacterStatus: String, Codable {
    case alive     = "Alive"
    case dead      = "Dead"
    case `unknown` = "unknown"
    
    var text: String {
        switch self {
        case .alive, .dead:
            return rawValue
        case .unknown:
            return "Unknown"
        }
    }
}
