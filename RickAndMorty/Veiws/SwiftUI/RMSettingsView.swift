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
        VStack {
            List(viewModel.cellViewModel) { viewModel in
                HStack {
                    if let image = viewModel.image {
                        Image(uiImage: image)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 25, height: 25)
                            .foregroundStyle(.red, .green)
                            .padding(2.5)
                            .background(Color(viewModel.iconContainerColor))
                            .cornerRadius(10)
                            
                    }
                    Text(viewModel.title)
                        .padding(.leading, 10)
                }
                .padding()
            }
    
        }
    }
}

#Preview {
    RMSettingsView(viewModel: .init(cellViewModel: RMSettingsOption.allCases.compactMap({
        return RMSettingsCellViewModel(type: $0)
    })))
}
