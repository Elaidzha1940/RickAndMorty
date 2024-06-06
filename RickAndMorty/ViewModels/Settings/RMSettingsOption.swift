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
    
    var iconContainerColor: UIColor {
        switch self {
        case .rateApp:
            return .systemMint
        case .contactUs:
            return .systemMint
        case .terms:
            return .systemMint
        case .privacy:
            return .systemMint
        case .apiReference:
            return .systemMint 
        }
    }
    
    var iconImage: UIImage? {
        switch self {
        case .rateApp:
            return UIImage(systemName: "star.fill")
        case .contactUs:
            return UIImage(systemName: "paperplane.fill")
        case .terms:
            return UIImage(systemName: "doc.fill")
        case .privacy:
            return UIImage(systemName: "lock.fill")
        case .apiReference:
            return UIImage(systemName: "list.clipboard")
        }
    }
}
