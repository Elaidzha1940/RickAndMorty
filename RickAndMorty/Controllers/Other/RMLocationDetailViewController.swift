//  /*
//
//  Project: RickAndMorty
//  File: RMLocationDetailViewController.swift
//  Created by: Elaidzha Shchukin
//  Date: 16.06.2024
//
//  */

import UIKit

final class RMLocationDetailViewController: UIViewController {
private let location: RMLocation
    
    // MARK: - Init
    
    init(location: RMLocation) {
        self.location = location
        super.init(nibName: nil, bundle: nil)
    }

    required init?(coder: NSCoder) {
        fatalError()
    }
    
    // MARK: - Lificycle

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Loaction"
        view.backgroundColor = .systemBackground
    }
}
