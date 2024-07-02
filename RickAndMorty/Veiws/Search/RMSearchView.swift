//  /*
//
//  Project: RickAndMorty
//  File: RMSearchView.swift
//  Created by: Elaidzha Shchukin
//  Date: 18.06.2024
//
//  */

import UIKit

protocol RMSearchViewDelegate: AnyObject {
    func rmSearchView(_ searchView: RMSearchView, didSelectOption option: RMSearchInputViewModel.DynamicOption)
}

final class RMSearchView: UIView {
    
    weak var delegate: RMSearchViewDelegate?
    private let viewModel: RMSearchViewModel
    
    // MARK: - Subviews
    
    private let searchInputView = RMSearchInputView()
    private let noResultsView = RMNoSearchResultsView()
    private let resultsView = RMSearchResultsView()
    
    // Results collectionView
    
    // MARK: - Init
    
    init(frame: CGRect, viewModel: RMSearchViewModel) {
        self.viewModel = viewModel
        super.init(frame: frame)
        backgroundColor = .systemBackground
        translatesAutoresizingMaskIntoConstraints = false
        addSubviews(resultsView, noResultsView, searchInputView)
        addConstraints()
        
        searchInputView.configure(with: RMSearchInputViewModel(type: viewModel.config.type))
        searchInputView.delegate = self
        
        setUpHandlers(viewModel: viewModel)
    }
    
    required init?(coder: NSCoder) {
        fatalError()
    }
    
    private func setUpHandlers(viewModel: RMSearchViewModel) {
        viewModel.registerOptionChangeBlock { tuple in
            print(String(describing: tuple))
            self.searchInputView.update(option: tuple.0, value: tuple.1)
        }
        
        viewModel.registerSearchResultHandler { results in
            print(results)
        }
        
        viewModel.registerNoResultsHandler { [weak self] in
            DispatchQueue.main.async {
                self?.noResultsView.isHidden = false
                self?.resultsView.isHidden = true
            }
        }
    }
    
    private func addConstraints() {
        NSLayoutConstraint.activate([
            // Search input view
            searchInputView.topAnchor.constraint(equalTo: topAnchor),
            searchInputView.leftAnchor.constraint(equalTo: leftAnchor),
            searchInputView.rightAnchor.constraint(equalTo: rightAnchor),
            searchInputView.heightAnchor.constraint(equalToConstant: viewModel.config.type == .episode ? 55 : 110),
            
            resultsView.topAnchor.constraint(equalTo: searchInputView.bottomAnchor),
            resultsView.leftAnchor.constraint(equalTo: leftAnchor),
            resultsView.rightAnchor.constraint(equalTo: rightAnchor),
            resultsView.bottomAnchor.constraint(equalTo: bottomAnchor),
            
            // No results
            noResultsView.widthAnchor.constraint(equalToConstant: 150),
            noResultsView.heightAnchor.constraint(equalToConstant: 150),
            noResultsView.centerXAnchor.constraint(equalTo: centerXAnchor),
            noResultsView.centerYAnchor.constraint(equalTo: centerYAnchor),
        ])
    }
    
    public func presentKeyboard() {
        searchInputView.presentKeyboard()
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

// MARK: - RMSearchInputViewDelegate

extension RMSearchView: RMSearchInputViewDelegate {
    func rmSearchInputView(_ inputView: RMSearchInputView, didSelectOption option: RMSearchInputViewModel.DynamicOption) {
        delegate?.rmSearchView(self, didSelectOption: option)
    }
    
    func rmSearchInputView(_ inputView: RMSearchInputView, didChangeSearchText text: String) {
        viewModel.set(query: text)
    }
    
    func rmSearchInputViewDidTapSearchKeyboardButton(_ inputView: RMSearchInputView) {
        viewModel.executeSearch()
    }
}
