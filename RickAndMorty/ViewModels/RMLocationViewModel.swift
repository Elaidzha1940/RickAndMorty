//  /*
//
//  Project: RickAndMorty
//  File: RMLocationViewModel.swift
//  Created by: Elaidzha Shchukin
//  Date: 08.06.2024
//
//  */

import Foundation

final class RMLocationViewModel {
    private var locations: [RMLocation] = []
    
    // Location response info
    // Will contain next url, if present
    
    private var cellViewModels: [String] = []
    
    init() {}
    
    public func fetchLocations() {
        RMService.shared.execute(.listLocationsRequest, expecting: String.self) { result in
            switch result {
            case .success(_):
                break
            case .failure(_):
                break
            }
        }
    }
    
    private var hasMoreResults: Bool {
        return false
    }
}
