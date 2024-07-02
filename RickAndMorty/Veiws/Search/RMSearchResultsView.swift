//  /*
//
//  Project: RickAndMorty
//  File: RMSearchResultsView.swift
//  Created by: Elaidzha Shchukin
//  Date: 02.07.2024
//
//  */

import UIKit

/// Shows search results UI (table or collection as needed)
final class RMSearchResultsView: UIView {
    
    private var viewModel: RMSearchResultViewModel? {
        didSet {
            self.processViewModel()
        }
    }
    
    // MARK: - Init
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        isHidden = true
        translatesAutoresizingMaskIntoConstraints = false
        backgroundColor = .systemMint
    }
    
    required init?(coder: NSCoder) {
        fatalError()
    }
    
    private func processViewModel() {
        guard let viewModel = viewModel else {
            return
        }
        
        switch viewModel {
        case .characters(let viewModel):
            break
        case .episodes(let viewModel):
            break
        case .locations(let viewModel):
            break
        }
    }
    
    private func addConstraints() {
        
    }
    
    public func configure(with viewModel: RMSearchResultViewModel) {
        self.viewModel = viewModel
    }
}
