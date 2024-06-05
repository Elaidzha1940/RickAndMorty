//  /*
//
//  Projecct: RickAndMorty
//  File: RMSettingsOption.swift
//  Created by: Elaidzha Shchukin
//  Date: 05.06.2024
//
//  */

import UIKit

enum RMSettingsOption: CaseIterable {
    case rateApp
    case contactUs
    case terms
    case privacy
    case apiReference
    
    var displayTitle: String {
        switch self {
        case .rateApp:
            return "Rate App"
        case .contactUs:
            return "Contact Us"
        case .terms:
            return "Terms of Service"
        case .privacy:
            return "Privacy Policy"
        case .apiReference:
            return "Api Reference"
        }
    }
    
    var iconImage: UIImage? {
        switch self {
        case .rateApp:
            return UIImage(systemName: "")
        case .contactUs:
            return UIImage(systemName: "")
        case .terms:
            return UIImage(systemName: "")
        case .privacy:
            return UIImage(systemName: "")
        case .apiReference:
            return UIImage(systemName: "")
        }
    }
}
