//  /*
//
//  Project: RickAndMorty
//  File: RMLocationTableViewCellViewModel.swift
//  Created by: Elaidzha Shchukin
//  Date: 11.06.2024
//
//  */

import Foundation

struct RMLocationTableViewCellViewModel: Hashable, Equatable {
    
    private let location: RMLocation
    
    init(location: RMLocation) {
        self.location = location
    }
    
    public var name: String {
        return location.name
    }
    
    public var type: String {
        return "Type: "+location.type
    }
    
    public var dimension: String {
        return location.dimension
    }
    
    static func == (lhs: RMLocationTableViewCellViewModel, rhs: RMLocationTableViewCellViewModel) -> Bool {
        return lhs.location.id == rhs.location.id
    }
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(location.id)
        hasher.combine(name)
        hasher.combine(type)
        hasher.combine(dimension)
    }
}
