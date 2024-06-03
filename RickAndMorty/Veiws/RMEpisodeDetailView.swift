//  /*
//
//  Project: RickAndMorty
//  File: RMEpisodeDetailView.swift
//  Created by: Elaidzha Shchukin
//  Date: 30.05.2024
//
//  */

import UIKit

final class RMEpisodeDetailView: UIView {
    
    private var viewModel: RMEpisodeDetailViewModel?
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        translatesAutoresizingMaskIntoConstraints = false
        backgroundColor = .systemTeal
    }
    
    required init?(coder: NSCoder) {
        fatalError("Unsupported")
    }
    
    private func addConstraints() {
        
    }
    
    public func configure(with viewModel: RMEpisodeDetailViewModel) {
        self.viewModel = viewModel
    }
}
