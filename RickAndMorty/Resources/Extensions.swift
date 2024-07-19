//  /*
//
//  Project: RickAndMorty
//  File: Extensions.swift
//  Created by: Elaidzha Shchukin
//  Date: 02.05.2024
//
//  */

import UIKit

extension UIView {
    /// Add multiple subviews
    /// - Parameter views: Variadic views
    func addSubviews(_ views: UIView...) {
        views.forEach({
            addSubview($0)
        })
    }
}

extension UIDevice {
    // Check if current device is phone idiom
    static let isiPhone = UIDevice.current.userInterfaceIdiom == .phone
}




