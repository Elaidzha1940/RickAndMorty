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
    
    private let endpoint: RMEndpoint
    private let pathComponents: [String]
    private let queryParameters: [URLQueryItem]
    
    private var urlString: String {
        var string = Constants.baseUrl
        string += "/"
        string += endpoint.rawValue
        
        if !pathComponents.isEmpty {
            pathComponents.forEach ({
                string += "/\($0)"
            })
        }
        
        if !queryParameters.isEmpty {
            string += "?"
            let argumentString = queryParameters.compactMap({
                guard let value = $0.value else { return nil }
                return "/\($0.name)=\(value)"
            }).joined(separator: "&")
            
            string += argumentString
        }
        
        return string
    }
    
    private var url: URL? {
        return nil
    }
    
    // MARK: - Public
    public init(endpoint: RMEndpoint,
                pathComponents: [String] = [],
                queryParameters: [URLQueryItem] = []
    ) {
        self.endpoint = endpoint
        self.pathComponents = pathComponents
        self.queryParameters = queryParameters
    }
}
