//  /*
//
//  Project: RickAndMorty
//  File: RMAPICacheManager.swift
//  Created by: Elaidzha Shchukin
//  Date: 29.05.2024
//
//  */

import Foundation

/// Manages in memory session scoped API caches
final class RMAPICacheManager {
    // API URL: Data
    
    private var cacheDictionary: [RMEndpoint: NSCache<NSString, NSData>] = [:]
        
    init() {
        setUpCache()
    }
    
    // MARK: - Public
    
    public func chachedResponse(for endpoint: RMEndpoint, url: URL?) -> Data? {
        guard let targetCache = cacheDictionary[endpoint], let url = url else {
            return nil
        }
        let key = url.absoluteString as NSString
        return targetCache.object(forKey: key) as Data?
    }
    
    public func setCache(for endpoint: RMEndpoint, url: URL?, data: Data) {
        guard let targetCache = cacheDictionary[endpoint], let url = url else {
            return
        }
        let key = url.absoluteString as NSString
        targetCache.setObject(data as NSData, forKey: key)
    }
    
    // MARK: - Private
    
    private func setUpCache() {
        RMEndpoint.allCases.forEach({ endpoint in
            cacheDictionary[endpoint] = NSCache<NSString, NSData>()
        })
    }
}
