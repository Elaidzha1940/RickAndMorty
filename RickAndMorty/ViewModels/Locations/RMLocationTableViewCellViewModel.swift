//  /*
//
//  Project: RickAndMorty
//  File: RMLocationTableViewCellViewModel.swift
//  Created by: Elaidzha Shchukin
//  Date: 11.06.2024
//
//  */

import Foundation

struct RMLocationTableViewCellViewModel {
    private let location: RMLocation
    
    init(location: RMLocation) {
        self.location = location
    }
    
    public var name: String {
         return location.name
    }
    
    public var type: String {
         return location.type
    }
    
    public var dimension: String {
        return location.dimension
    }
}
