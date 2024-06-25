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
    
    private var optionMapUpdateBlock: (((RMSearchInputViewModel.DynamicOption, String)) -> ())?
    
    private var optionMap: [RMSearchInputViewModel.DynamicOption: String] = [:]
    
    // MARK: - Init
    
    init(config: RMSearchViewController.Config) {
        self.config = config
    }
    
    // MARK: - Public
    
    public func set(value: String, for option: RMSearchInputViewModel.DynamicOption) {
        optionMap[option] = value
        let tuple = (option, value)
        optionMapUpdateBlock?(tuple)
    }
    
    public func registerOptionChangeBlock(_ block: @escaping ((RMSearchInputViewModel.DynamicOption, String)) -> ()) {
        self.optionMapUpdateBlock = block
    }
}
