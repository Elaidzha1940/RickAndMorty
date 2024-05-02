//  /*
//
//  Project: RickAndMorty
//  File: CharacterListViewModel.swift
//  Created by: Elaidzha Shchukin
//  Date: 02.05.2024
//
//  */

import Foundation

struct CharacterListViewModel {
    func fetchCharacters() {
        RMService.shared.execute(.listCharactersRequests, expecting: RMGetAllCharatersResponse.self) { result in
            switch result {
            case .success(let model):
                print("Total: "+String(model.info.count))
                print("Page result count: "+String(model.results.count))
            case .failure(let error):
               print( String(describing: error))
            }
        }
    }
}
