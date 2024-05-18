//  /*
//
//  Project: RickAndMorty
//  ImageLoader.swift
//  Created by: Elaidzha Shchukin
//  Date: 18.05.2024
//
//  */

import Foundation

final class RMImageLoader {
    static let shared = RMImageLoader()
    
    private var imageDataCache = NSCache<NSString, NSData>()
    
    private init() {}
    
   public func downloadImage(_ url: URL, completion: @escaping (Result<Data, Error>) -> ()) {
        let request = URLRequest(url: url)
        let task = URLSession.shared.dataTask(with: request) { data, _, error in
            guard let data = data, error == nil else {
                completion(.failure(error ?? URLError(.badServerResponse)))
                return
            }
            completion(.success(data))
        }
        task.resume()
    }
}
