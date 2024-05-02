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

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        title = "Characters"
        
        RMService.shared.execute(.listCharactersRequests, expecting: RMGetAllCharatersResponse.self) { result in
            switch result {
            case .success(let model):
                print("Total: "+String(model.info.count))
                print("Page result count: "+String(model.results.count))
            case .failure(let error):
               print( String(describing: error))
            }
        }
    }
}
