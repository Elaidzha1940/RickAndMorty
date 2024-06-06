//  /*
//
//  Project: RickAndMorty
//  File: RMSettingsViewController.swift
//  Created by: Elaidzha Shchukin
//  Date: 25.04.2024
//
//  */

import SwiftUI
import UIKit

/// Controller to show various options and settings
final class RMSettingsViewController: UIViewController {
    
    private let settingsSwiftUIController = UIHostingController(
        rootView: RMSettingsView(viewModel: RMSettingsViewModel(
            cellViewModel: RMSettingsOption.allCases.compactMap({
                return RMSettingsCellViewModel(type: $0)
            }))))
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        title = "Settings"
        addSwiftUIController()
    }
    
    private func addSwiftUIController() {
        addChild(settingsSwiftUIController)
        settingsSwiftUIController.didMove(toParent: self)
        
        view.addSubview(settingsSwiftUIController.view)
        settingsSwiftUIController.view.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
        
        ])
    }
}

