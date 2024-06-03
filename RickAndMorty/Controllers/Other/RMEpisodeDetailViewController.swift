//  /*
//
//  Project: RickAndMorty
//  File: RMEpisodeDetailViewController.swift
//  Created by: Elaidzha Shchukin
//  Date: 28.05.2024
//
//  */

import UIKit

/// VC to show details about single episode
final class RMEpisodeDetailViewController: UIViewController, RMEpisodeDetailViewModelDelegate {
    private let viewModel: RMEpisodeDetailViewModel
    private let detailView = RMEpisodeDetailView()
    
    // MARK: - Init
    
    init(url: URL?) {
        self.viewModel = RMEpisodeDetailViewModel(endpointUrl: url)
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError()
    }
    
    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(detailView)
        addConsraints()
        title = "Episode"
        
        navigationItem.rightBarButtonItem = UIBarButtonItem(
            barButtonSystemItem: .action, target: self, action: #selector(didTapShare))
    }
    
    private func addConsraints() {
        NSLayoutConstraint.activate([
            detailView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            detailView.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor),
            detailView.rightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.rightAnchor),
            detailView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
        ])
    }
    
    @objc
    private func didTapShare() {
        
    }
    
    func didFetchEpisodeDetails() {
        detailView.configure(with: viewModel)
    }
}
