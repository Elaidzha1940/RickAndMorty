//  /*
//
//  Project: RickAndMorty
//  File: RMEndpoint.swift
//  Created by: Elaidzha Shchukin
//  Date: 26.04.2024
//
//  */

import Foundation

/// Represents unique API endpoint
@frozen enum RMEndpoint: String, CaseIterable, Hashable {
    /// Endpoint to get character info
     case character
    /// Endpoint to get location info
     case location
    /// Endpoint to get episode info
     case episode
}
