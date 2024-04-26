//  /*
//
//  Project: RickAndMorty
//  File: RMService.swift
//  Created by: Elaidzha Shchukin
//  Date: 26.04.2024
//
//  */

import Foundation

final class RMService {
    static let share = RMService()
    
    private init()
    
    public func execute(_ request: RMRequest, completion: @escaping () -> Void)
}
