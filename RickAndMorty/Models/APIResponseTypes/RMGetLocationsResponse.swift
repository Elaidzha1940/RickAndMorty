//  /*
//
//  Project: RickAndMorty
//  File: RMGetLocationsResponse.swift
//  Created by: Elaidzha Shchukin
//  Date: 09.06.2024
//
//  */

import Foundation

struct RMGetLocationsResponse: Codable {
    struct Info: Codable {
        let count: Int
        let pages: Int
        let next: String?
        let prev: String?
    }
    
    let info: Info
    let results: [RMLocation]
}
