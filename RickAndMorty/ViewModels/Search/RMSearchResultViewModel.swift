//  /*
//
//  Project: RickAndMorty
//  File: RMSearchResultType.swift
//  Created by: Elaidzha Shchukin
//  Date: 29.06.2024
//
//  */

import Foundation

struct RMSearchResultViewModel {
    let results: RMSearchResultType
}

enum RMSearchResultType {
    case characters([RMCharacterCollectionViewCellViewModel])
    case episodes([RMCharacterEpisodeCollectionViewCellViewModel])
    case locations([RMLocationTableViewCellViewModel])
}
