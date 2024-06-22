//  /*
//
//  Project: RickAndMorty
//  File: RMSearchInputView.swift
//  Created by: Elaidzha Shchukin
//  Date: 18.06.2024
//
//  */

import UIKit

final class RMSearchInputView: UIView {
    
    private let searchBar: UISearchBar = {
        let searchBar = UISearchBar()
        searchBar.placeholder = "Search"
        searchBar.translatesAutoresizingMaskIntoConstraints = false
        return searchBar
    }()
    
    private var viewModel: RMSearchInputViewModel? {
        didSet {
            guard let viewModel = viewModel, viewModel.hasDynamicOptions == true else {
                return
            }
            let options = viewModel.options
            createOptionSelectionViews(options: options)
        }
    }
    
    // MARK: - Init
    override init(frame: CGRect) {
        super.init(frame: frame)
        translatesAutoresizingMaskIntoConstraints = false
        backgroundColor = .systemTeal
        addSubviews(searchBar)
        addConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError()
    }
    
    private func addConstraints() {
        NSLayoutConstraint.activate([
            searchBar.topAnchor.constraint(equalTo: topAnchor),
            searchBar.leftAnchor.constraint(equalTo: leftAnchor),
            searchBar.rightAnchor.constraint(equalTo: rightAnchor),
            searchBar.heightAnchor.constraint(equalToConstant: 55)
        ])
    }
    
    private func createOptionSelectionViews(options: [RMSearchInputViewModel.DynamicOption]) {
        for option in options {
            print(option.rawValue)
        }
    }
    
    public func configure(with viewModel: RMSearchInputViewModel) {
        searchBar.placeholder = viewModel.searchPlaceholderText
        self.viewModel = viewModel
    }
    
    public func presentKeyboard() {
        searchBar.becomeFirstResponder()
    }
}
