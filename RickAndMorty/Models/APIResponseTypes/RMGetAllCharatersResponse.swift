//  /*
//
//  Project: RickAndMorty
//  File: RMGetAllCharatersResponse.swift
//  Created by: Elaidzha Shchukin
//  Date: 01.05.2024
//
//  */

import Foundation

struct RMGetAllCharatersResponse: Codable  {
    struct Info: Codable {
        let count: Int
        let pages: Int
        let next: String?
        let prev: String?
    }
    
    let info: Info
    let results: [RMCharacter]
    
}

