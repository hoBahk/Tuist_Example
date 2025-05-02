//
//  HomeRepository.swift
//  HomeRepository
//
//  Created by hoBahk on 2025/04/24.
//

import Foundation

import NetworkCore
import HomeDomain

public final class UserRepositoryImpl: UserRepository {
    private let network: NetworkService

    public init(network: NetworkService) {
        self.network = network
    }

    public func fetchUsers() async throws -> [User] {
        let data = try await network.request(endpoint: "https://jsonplaceholder.typicode.com/users")
        let users = try JSONDecoder().decode([UserDTO].self, from: data)
        return users.map { User(id: $0.id, name: $0.name) }
    }
}

public struct UserDTO: Decodable {
    public let id: Int
    public let name: String
}
