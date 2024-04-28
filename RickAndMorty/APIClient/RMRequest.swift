//  /*
//
//  Project: RickAndMorty
//  File: RMRequest.swift
//  Created by: Elaidzha Shchukin
//  Date: 26.04.2024
//
//  */

import Foundation

/// Object that represents a single API call
final class RMRequest {
    
    private struct Constants {
        static let baseUrl = "https://rickandmortyapi.com/api/location/3"
    }
    
    let endpoint: RMEndpoint
    let pathComponents: [String]
    let queryParameters: [URLQueryItem]
    
    public init(endpoint: RMEndpoint,
                pathComponents: [String] = [],
                queryParameters: [URLQueryItem] = []
    ) {
        self.endpoint = endpoint
        self.pathComponents = pathComponents
        self.queryParameters = queryParameters
    }
}
