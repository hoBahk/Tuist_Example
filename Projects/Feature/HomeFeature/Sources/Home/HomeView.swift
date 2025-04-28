//
//  HomeView.swift
//  HomeFeature
//
//  Created by hoBahk on 2025/04/24.
//

import SwiftUI

public struct HomeView: View {
    @StateObject var viewModel: HomeViewModel

    public init(viewModel: HomeViewModel) {
        _viewModel = StateObject(wrappedValue: viewModel)
    }

    public var body: some View {
        List(viewModel.users) { user in
            Text(user.name)
        }
        .listStyle(.plain)
        .task {
            await viewModel.onAppear()
        }
    }
}

#Preview("Sample Users") {
    let mockUseCase = MockUserUseCase()
    let viewModel = HomeViewModel(useCase: mockUseCase)
    return HomeView(viewModel: viewModel)
}
