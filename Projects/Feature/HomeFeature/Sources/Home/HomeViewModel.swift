//
//  HomeViewModel.swift
//  HomeFeature
//
//  Created by hoBahk on 2025/04/24.
//

import Foundation

import HomeDomain

@MainActor
public final class HomeViewModel: ObservableObject {
    @Published public var users: [User] = []

    private let useCase: UserUseCase

    public init(useCase: UserUseCase) {
        self.useCase = useCase
    }

    public func onAppear() async {
        do {
            self.users = try await useCase.loadUsers()
        } catch {
            print("Error: \(error)")
        }
    }
}

public final class MockUserUseCase: UserUseCase {
    public init() {}
    
    public func loadUsers() async throws -> [User] {
        return [
            User(id: 1, name: "Alice"),
            User(id: 2, name: "Bob"),
            User(id: 3, name: "Charlie")
        ]
    }
}
