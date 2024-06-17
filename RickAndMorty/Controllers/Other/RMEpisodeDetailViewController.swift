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
final class RMEpisodeDetailViewController: UIViewController, RMEpisodeDetailViewModelDelegate, RMEpisodeDetailViewDelegate {
    private let viewModel: RMEpisodeDetailViewModel
    private let detailView = RMLocationDetailView()
    
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
        detailView.delegate = self
        title = "Episode"
        navigationItem.rightBarButtonItem = UIBarButtonItem(
            barButtonSystemItem: .action, target: self, action: #selector(didTapShare))
        
        viewModel.delegate = self
        viewModel.fetchEpisodeData()
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
    
    // MARK: View Delegate
    
    func rmEpisodeDetailView(
        _ detailView: RMLocationDetailView,
        didSelect character: RMCharacter
    ) {
        let vc = RMCharacterDetailViewController.init(viewModel: .init(character: character))
        vc.title = character.name
        vc.navigationItem.largeTitleDisplayMode = .never
        navigationController?.pushViewController(vc, animated: true)
    }
    
    // MARK: ViewModel Delegate
    
    func didFetchEpisodeDetails() {
        detailView.configure(with: viewModel)
    }
}
