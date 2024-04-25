//  /*
//
//  Project: RickAndMorty
//  File: RMTabBarController.swift
//  Created by: Elaidzha Shchukin
//  Date: 25.04.2024
//
//  */

import UIKit

final class RMTabBarController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .cyan
        setUpTabs()
    }
    
    private func setUpTabs() {
        let charactersVC = RMCharacterViewController()
        let locationsVC  = RMLocationViewController()
        let episodesVC   = RMEpisodeViewController()
        let settingsVC   = RMSettingsViewController()
        
        charactersVC.title = "Characters"
        locationsVC.title  = "Locations"
        episodesVC.title   = "Episodes"
        settingsVC.title   = "Settings"
        
        let nav1 = UINavigationController(rootViewController: charactersVC)
        let nav2 = UINavigationController(rootViewController: locationsVC)
        let nav3 = UINavigationController(rootViewController: episodesVC)
        let nav4 = UINavigationController(rootViewController: settingsVC)
        
        
        setViewControllers(
            [nav1, nav2, nav3, nav4],
            animated: true
        )
    }
}

