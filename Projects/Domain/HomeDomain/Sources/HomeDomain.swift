//
//  HomeDomain.swift
//  HomeDomain
//
//  Created by hoBahk on 2025/04/24.
//

import Foundation

public struct User: Identifiable {
    public let id: Int
    public let name: String
    
    public init(id: Int, name: String) {
        self.id = id
        self.name = name
    }
}

public protocol UserRepository {
    func fetchUsers() async throws -> [User]
}

public protocol UserUseCase {
    func loadUsers() async throws -> [User]
}

public final class DefaultUserUseCase: UserUseCase {
    private let repository: UserRepository

    public init(repository: UserRepository) {
        self.repository = repository
    }

    public func loadUsers() async throws -> [User] {
        return try await repository.fetchUsers()
    }
}
