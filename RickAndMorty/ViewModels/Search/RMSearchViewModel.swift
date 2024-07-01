//  /*
//
//  Project: RickAndMorty
//  File: RMSearchViewModel.swift
//  Created by: Elaidzha Shchukin
//  Date: 18.06.2024
//
//  */

import Foundation

// Responsibilities
// - show search results
// - show no results view
// - kick off API requests

final class RMSearchViewModel {
    let config: RMSearchViewController.Config
    private var optionMap: [RMSearchInputViewModel.DynamicOption: String] = [:]
    private var searchText = ""
    private var optionMapUpdateBlock: (((RMSearchInputViewModel.DynamicOption, String)) -> ())?
    private var searchResultHandler: ((RMSearchResultViewModel) -> ())?
    
    // MARK: - Init
    
    init(config: RMSearchViewController.Config) {
        self.config = config
    }
    
    // MARK: - Public
    
    public func registerSearchResultHandler(_ block: @escaping (RMSearchResultViewModel) -> ()) {
        self.searchResultHandler = block
    }
    
    public func executeSearch() {
        // Build arguments
        var queryParams: [URLQueryItem] = [
            URLQueryItem(name: "name", value: searchText.addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed))
        ]
        
        // Add options
        queryParams.append(contentsOf: optionMap.enumerated().compactMap({ _, element in
            let key: RMSearchInputViewModel.DynamicOption = element.key
            let value: String = element.value
            return URLQueryItem(name: key.queryArgument, value: value)
        }))
        
        // Create request
        let request = RMRequest(
            endpoint: config.type.endpoint,
            queryParameters: queryParams)
        
        switch config.type.endpoint {
        case .character:
            makeSearchAPICall(RMGetAllCharatersResponse.self, request: request)
        case .episode:
            makeSearchAPICall(RMGetAllEpisodesResponse.self, request: request)
        case .location:
            makeSearchAPICall(RMGetAllLocationsResponse.self, request: request)
        }
    }
    
    private func makeSearchAPICall<T: Codable>(_ type: T.Type, request: RMRequest) {
        RMService.shared.execute(request, expecting: type) { [weak self] result in
            // Notify view of results, no results, or error
            
            switch result {
            case .success(let model):
                self?.processSearchResults(model: model)
            case .failure:
                print("Failed to get results")
                break
            }
        }
    }
    
    private func processSearchResults(model: Codable) {
        var resultsVM: RMSearchResultViewModel?
        if let characterResults = model as? RMGetAllCharatersResponse {
            resultsVM = .characters
        }
        else if let episodesResults = model as? RMGetAllEpisodesResponse {
            resultsVM = .episodes
        }
        else if let locationsResults = model as? RMGetAllLocationsResponse {
            resultsVM = .locations
        }
        if let results = resultsVM {
            self.searchResultHandler?(results)
        } else {
            // fallback error
        }
    }
    
    public func set(query text: String) {
        self.searchText = text
    }
    
    public func set(value: String, for option: RMSearchInputViewModel.DynamicOption) {
        optionMap[option] = value
        let tuple = (option, value)
        optionMapUpdateBlock?(tuple)
    }
    
    public func registerOptionChangeBlock(_ block: @escaping ((RMSearchInputViewModel.DynamicOption, String)) -> ()) {
        self.optionMapUpdateBlock = block
    }
}
