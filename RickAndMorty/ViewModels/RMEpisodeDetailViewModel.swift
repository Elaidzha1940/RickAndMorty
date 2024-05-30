//  /*
//
//  Project: RickAndMorty
//  File: RMEpisodeDetailViewModel.swift
//  Created by: Elaidzha Shchukin
//  Date: 30.05.2024
//
//  */

import UIKit

class RMEpisodeDetailViewModel {
    private let endpointUrl: URL?
    
    init(endpointUrl: URL?) {
        self.endpointUrl = endpointUrl
        fetchEpisodeData()
    }
    
    private func fetchEpisodeData() {
        guard let url = endpointUrl,
              let request = RMRequest(url: url) else {
            return
        }
        
        RMService.shared.execute(request, expecting: RMEpisode.self) { result in
            switch result {
            case .success(let success):
                print(String(describing: success))
            case .failure(let failure):
                break
            }
        }
    }
}
