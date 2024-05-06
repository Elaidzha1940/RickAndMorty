//  /*
//
//  Project: RickAndMorty
//  File: Extensions.swift
//  Created by: Elaidzha Shchukin
//  Date: 02.05.2024
//
//  */

import UIKit

//extension UIView {
//    func addSubviews(_ views: UIView...) {
//       views.forEach({
//            addSubviews($0)
//        })
//    }
//}

extension UIView {
    func addSubviews(_ views: UIView...) {
        views.forEach({ addSubview($0) })
    }
}
