//  /*
//
//  Project: RickAndMorty
//  File: RMEpisodeDetailViewModel.swift
//  Created by: Elaidzha Shchukin
//  Date: 30.05.2024
//
//  */

import UIKit

protocol RMEpisodeDetailViewModelDelegate: AnyObject {
    func didFetchEpisodeDetails()
}

final class RMEpisodeDetailViewModel {
    private let endpointUrl: URL?
    private var dataTuple: (episode: RMEpisode, sharacters: [RMCharacter])? {
        didSet {
            createCellViewModels()
            delegate?.didFetchEpisodeDetails()
        }
    }
    
    enum SectionType {
        case information(viewModel: [RMEpisodeInfoCollectionViewCellViewModel])
        case characters(viewModel: [RMCharacterCollectionViewCellViewModel])
    }
    
    public weak var delegate: RMEpisodeDetailViewModelDelegate?
    
    public private(set) var sections: [SectionType] = []
    
    // MARK: - Init
    
    init(endpointUrl: URL?) {
        self.endpointUrl = endpointUrl
    }
    
    // MARK: - Private
    
    private func createCellViewModels() {
        let episode = dataTuple?.episode
        sections = [
            .information(viewModel: [
                .init(title: "", value: "")
            ])
        ]
    }
    
    /// Fetch backing episode model
    public func fetchEpisodeData() {
        guard let url = endpointUrl,
              let request = RMRequest(url: url) else {
            return
        }
        
        RMService.shared.execute(request, expecting: RMEpisode.self) { [weak self] result in
            switch result {
            case .success(let model):
                self?.fetchRelatedCharacters(episode: model)
            case .failure:
                break
            }
        }
    }
    
    private func fetchRelatedCharacters(episode: RMEpisode) {
        let requests: [RMRequest] = episode.characters.compactMap({
            return URL(string: $0)
        }).compactMap({
            return RMRequest(url: $0)
        })
        
        // 10 of parallel requests
        // Notified once all done
        
        let group = DispatchGroup()
        var characters: [RMCharacter] = []
        for  request in requests {
            group.enter() // +20
            RMService.shared.execute(request, expecting: RMCharacter.self) { result in
                defer {
                    group.leave() // -20
                }
                switch result {
                case .success(let model):
                    characters.append(model)
                case .failure:
                    break
                }
            }
        }
        
        group.notify(queue: .main) {
            self.dataTuple = (episode, characters)
        }
    }
}
