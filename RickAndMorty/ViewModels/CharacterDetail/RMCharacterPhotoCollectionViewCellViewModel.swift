//  /*
//
//  Project: RickAndMorty
//  File: RMCharacterPhotoCollectionViewCellViewModel.swift
//  Created by: Elaidzha Shchukin
//  Date: 22.05.2024
//
//  */

import Foundation

final class RMCharacterPhotoCollectionViewCellViewModel {
    private let imageUrl: URL?
    
    init(imageUrl: URL?) {
        self.imageUrl = imageUrl
    }
    
    public func fetchImage(completion: @escaping (Result<Data, Error>) -> ()) {
        guard let imageUrl = imageUrl else {
            completion(.failure(URLError(.badURL)))
            return
        }
        RMImageLoader.shared.downloadImage(imageUrl, completion: completion)
    }
}
