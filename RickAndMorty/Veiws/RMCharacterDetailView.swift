//  /*
//
//  Project: RickAndMorty
//  File: RMCharacterDetailView.swift
//  Created by: Elaidzha Shchukin
//  Date: 14.05.2024
//
//  */

import UIKit

/// View for single character info
final class RMCharacterDetailView: UIView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        translatesAutoresizingMaskIntoConstraints = false
        backgroundColor = .systemPink
    }
    
    required init?(coder: NSCoder) {
        fatalError("Upsupported")
    }
}
