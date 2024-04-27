//  /*
//
//  Project: RickAndMorty
//  File: RMCharacter.swift
//  Created by: Elaidzha Shchukin
//  Date: 25.04.2024
//
//  */

import Foundation

struct RMCharacter: Codable {
    let id: Int
    let name: String
    let status: RMCharacterStatus
    let species: String
    let type: String
    let gender: String
    let origin: RMOrigin
    let Location: RMOneLocation
    let image: String
    let episode: [String]
    let url: String
    let created: String
}

enum RMCharacterStatus: String, Codable {
    case alive   = "Alive"
    case dead    = "Dead"
    case `unknown` = "unknown"
}
