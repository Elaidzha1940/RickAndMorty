//  /*
//
//  Project: RickAndMorty
//  File: RMSearchView.swift
//  Created by: Elaidzha Shchukin
//  Date: 18.06.2024
//
//  */

import UIKit

final class RMSearchView: UIView {

    init(frame: CGRect, viewModel: RMSearchViewModel) {
        super.init(frame: frame)
        backgroundColor = .systemMint
        translatesAutoresizingMaskIntoConstraints = false
    }
    
    required init?(coder: NSCoder) {
        fatalError()
    }
    
    
}
