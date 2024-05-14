//  /*
//
//  Project: RickAndMorty
//  File: RMCharacterDetailViewController.swift
//  Created by: Elaidzha Shchukin
//  Date: 14.05.2024
//
//  */

import UIKit

/// Controller  to show info about single character
final class RMCharacterDetailViewController: UIViewController {
    
    init(viewModel: RMCharacterDetailViewModel ) {
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("Unsupperted")
    }
    
    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .green
    }
}
