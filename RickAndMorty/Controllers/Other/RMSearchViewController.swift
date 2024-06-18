//  /*
//
//  Project: RickAndMorty
//  File: RMSearchViewController.swift
//  Created by: Elaidzha Shchukin
//  Date: 01.06.2024
//
//  */

import UIKit

// Dynamic search option view
// Render results
// Render no results zero state
// Searching / API Call

/// Configure controller to search
final class RMSearchViewController: UIViewController {
    /// Configuration for search session
    struct Config {
        enum `Type` {
            case character // name | status | gender
            case episode // name |
            case location // name | type
            
            var title: String {
                switch self {
                case .character:
                    return "Seach Characters"
                case .location:
                    return "Seach Location"
                case .episode:
                    return "Seach Episode"
                }
            }
        }
        
        let type: `Type`
    }
    
    private let config: Config
    
    // MARK: - Init
    
    init(config: Config) {
        self.config = config
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("Unsupported")
    }
    
    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = config.type.title
        view.backgroundColor = .systemBackground
        
    }
}

//https://rickandmortyapi.com/api/character/1,183
