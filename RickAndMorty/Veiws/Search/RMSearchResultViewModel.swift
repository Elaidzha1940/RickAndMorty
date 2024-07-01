//  /*
//
//  Project: RickAndMorty
//  File: RMSearchResultViewModel.swift
//  Created by: Elaidzha Shchukin
//  Date: 29.06.2024
//
//  */

import Foundation

protocol RMSearchResultRepresentable {
    associatedtype ResultType
    
    var results: [ResultType ] { get }
}

struct RMSearchResultViewModel<T>: RMSearchResultRepresentable {
    typealias ResultType = T
    var results: [ResultType]
}
