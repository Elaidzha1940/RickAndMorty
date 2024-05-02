//  /*
//
//  Project: RickAndMorty
//  File: RMCharacterViewController.swift
//  Created by: Elaidzha Shchukin
//  Date: 25.04.2024
//
//  */

import UIKit

/// Controller to show and search for Characters
final class RMCharacterViewController: UIViewController {
    private let charactersListView = CharacterListView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        title = "Characters"
        view.addSubview(charactersListView)
        
        NSLayoutConstraint.activate([
            charactersListView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            charactersListView.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor),
            charactersListView.rightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.rightAnchor),
            charactersListView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor)
        ])
    }
}
