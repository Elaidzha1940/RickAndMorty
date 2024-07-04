//  /*
//
//  Project: RickAndMorty
//  File: RMTableLoadingFooterView.swift
//  Created by: Elaidzha Shchukin
//  Date: on 04.07.2024.
//
//  */

import UIKit

final class RMTableLoadingFooterView: UIView {
    
    private let spinner: UIActivityIndicatorView = {
        let spinner = UIActivityIndicatorView(style: .medium)
        spinner.hidesWhenStopped = true
        spinner.translatesAutoresizingMaskIntoConstraints = false
        return spinner
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubviews(spinner)
        spinner.startAnimating()
        addConstarints()
    }
    
    required init?(coder: NSCoder) {
        fatalError()
    }
    
    private func addConstarints() {
        NSLayoutConstraint.activate([
            spinner.widthAnchor.constraint(equalToConstant: 55),
            spinner.heightAnchor.constraint(equalToConstant: 55),
            spinner.centerXAnchor.constraint(equalTo: centerXAnchor),
            spinner.centerYAnchor.constraint(equalTo: centerYAnchor),
        ])
    }
}
