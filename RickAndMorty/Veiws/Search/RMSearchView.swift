//  /*
//
//  Project: RickAndMorty
//  File: RMSearchView.swift
//  Created by: Elaidzha Shchukin
//  Date: 18.06.2024
//
//  */

import UIKit

final class RMSearchView: UIView {
    private let viewModel: RMSearchViewModel
    
    // MARK: - Subviews
    
    // SearchInputView(bar, selection buttons)
    // No results view
    // Results collectionView
    
    // MARK: - Init
    init(frame: CGRect, viewModel: RMSearchViewModel) {
        self.viewModel = viewModel
        super.init(frame: frame)
        backgroundColor = .systemMint
        translatesAutoresizingMaskIntoConstraints = false
    }
    
    required init?(coder: NSCoder) {
        fatalError()
    }
}

// MARK: - CollectionView

extension RMSearchView: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 0
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath)
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        collectionView.deselectItem(at: indexPath, animated: true)
        
    }
}
