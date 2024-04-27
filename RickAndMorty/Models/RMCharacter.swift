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
    let gender: RMCharacterGender
    let origin: RMOrigin
    let Location: RMOneLocation
    let image: String
    let episode: [String]
    let url: String
    let created: String
}
