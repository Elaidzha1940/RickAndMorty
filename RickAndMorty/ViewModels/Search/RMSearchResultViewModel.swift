//  /*
//
//  Project: RickAndMorty
//  File: RMSearchResultViewModel.swift
//  Created by: Elaidzha Shchukin
//  Date: 29.06.2024
//
//  */

import Foundation

enum RMSearchResultViewModel {
    case characters([RMCharacterCollectionViewCellViewModel])
    case episodes([RMCharacterEpisodeCollectionViewCellViewModel])
    case locations([RMLocationTableViewCellViewModel])
}
