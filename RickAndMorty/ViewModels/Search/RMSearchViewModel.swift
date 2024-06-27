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
    
    
    // MARK: - Init
    
    init(config: RMSearchViewController.Config) {
        self.config = config
    }
    
    // MARK: - Public
    
    public func executeSearch() {
        // Create Request based on filters
        // &status=alive
        
        switch config.type {
        case .character:
            searchText = "Rick"
            var urlString = "https://rickandmortyapi.com/api/character/?"
            urlString += "?name=\(searchText)"
            
            for (option, value) in optionMap {
                urlString += "&\(option.queryArgument)=\(value)"
            }
            
            guard let url = URL(string: urlString) else {
                return
            }
            
            guard let request = RMRequest(url: url) else {
                return
            }
            
            RMService.shared.execute(request, expecting: RMGetAllCharatersResponse.self) { result in
                switch result {
                case .success(let model):
                    print("Search results found: \(model.results.count)")
                case .failure:
                    break
                }
            }
                    
        case .episode:
            break
        case .location:
            break
        }
        
        // Send API Call
        
        
        // Notify view of results, no results, or error
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
