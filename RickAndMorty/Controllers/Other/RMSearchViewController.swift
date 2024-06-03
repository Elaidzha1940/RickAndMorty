//  /*
//
//  Project: RickAndMorty
//  File: RMSearchViewController.swift
//  Created by: Elaidzha Shchukin
//  Date: 01.06.2024
//
//  */

import UIKit

/// Configure controller to search
final class RMSearchViewController: UIViewController {
    
    struct Config {
        enum `Type` {
            case character
            case episode
            case location
        }
        
        let type: `Type`
    }
    
    private let config: Config
    
    init(config: Config) {
        self.config = config
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("Unsupported")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Search"
        view.backgroundColor = .systemBackground

    }
}

//https://rickandmortyapi.com/api/character/1,183
