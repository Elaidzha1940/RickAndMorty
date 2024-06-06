//  /*
//
//  Project: RickAndMorty
//  File: RMSettingsView.swift
//  Created by: Elaidzha Shchukin
//  Date: 06.06.2024
//
//  */

import SwiftUI

struct RMSettingsView: View {
    let viewModel: RMSettingsViewModel
    
    init(viewModel: RMSettingsViewModel) {
        self.viewModel = viewModel
    }
    
    var body: some View {
        ScrollView(.vertical) {
            List(viewModel.cellViewModel) { viewModel in
                Text(viewModel.title)
            }
        }
    }
}

#Preview {
    RMSettingsView(viewModel: .init(cellViewModel: RMSettingsOption.allCases.compactMap({
        return RMSettingsCellViewModel(type: $0)
    })))
}
