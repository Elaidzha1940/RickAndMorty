//  /*
//
//  Project: RickAndMorty
//  File: RMSettingsViewController.swift
//  Created by: Elaidzha Shchukin
//  Date: 25.04.2024
//
//  */

import UIKit

/// Controller to show various options and settings
final class RMSettingsViewController: UIViewController {
    
    private let viewModel = RMSettingsViewModel(
    cellViewModel: RMSettingsOption.allCases.compactMap({
        return RMSettingsCellViewModel(type: $0)
    }))
    

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        title = "Settings"
    }
}

