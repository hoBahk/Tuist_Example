//
//  NetworkService.swift
//  Network
//
//  Created by 박병호 on 4/24/25.
//


import Foundation

public protocol NetworkService {
    func request(endpoint: String) async throws -> Data
}
