//  /*
//
//  Project: RickAndMorty
//  File: CharacterListView.swift
//  Created by: Elaidzha Shchukin
//  Date: 02.05.2024
//
//  */

import UIKit

/// View that handels showing list of characters, loader, etc.
final class CharacterListView: UIView {

    override init(frame: CGRect) {
        super.init(frame: frame)
        translatesAutoresizingMaskIntoConstraints = false
        backgroundColor = .systemCyan
    }
    
    required init?(coder: NSCoder) {
        fatalError("Unsupported")
    }
}
