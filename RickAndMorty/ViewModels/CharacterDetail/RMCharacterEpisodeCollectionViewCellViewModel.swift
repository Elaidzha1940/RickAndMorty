//  /*
//
//  Project: RickAndMorty
//  File: RMCharacterEpisodeCollectionViewCellViewModel.swift
//  Created by: Elaidzha Shchukin
//  Date: 22.05.2024
//
//  */

import Foundation

final class RMCharacterEpisodeCollectionViewCellViewModel {
    private let episodeDataUrl: URL?
    
    init(episodeDataUrl: URL?) {
        self.episodeDataUrl = episodeDataUrl
    }
    
    public func fetchEpisode() {
        print(episodeDataUrl)
        guard let url = episodeDataUrl,
              let request = RMRequest(url: url) else {
            return
        }
        
        RMService.shared.execute(request, expecting: RMEpisode.self) { result in
            <#code#>
        }
    }
}
