//  /*
//
//  Project: RickAndMorty
//  File: RMService.swift
//  Created by: Elaidzha Shchukin
//  Date: 26.04.2024
//
//  */


import Foundation

/// Primary API service object to get Rick and Morty data
final class RMService {
    /// Shared Singletone instance
    static let share = RMService()
    
    /// Privatized constructor
    private init() {}
    
    /// Send Rick and Morty API Call
    /// - Parameters:
    ///   - request: Request instance
    ///   - completion: Callback with data or error 
    public func execute(_ request: RMRequest, completion: @escaping () -> Void) {
        
    }
}
