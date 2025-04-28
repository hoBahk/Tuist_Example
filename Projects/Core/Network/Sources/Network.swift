//
//  Network.swift
//  Network
//
//  Created by hoBahk on 2025/04/24.
//

import Foundation

public final class Network: NetworkService {
    public init() {}

    public func request(endpoint: String) async throws -> Data {
        guard let url = URL(string: endpoint) else {
            throw URLError(.badURL)
        }

        let (data, response) = try await URLSession.shared.data(from: url)

        guard let http = response as? HTTPURLResponse, (200..<300).contains(http.statusCode) else {
            throw URLError(.badServerResponse)
        }

        return data
    }
}
