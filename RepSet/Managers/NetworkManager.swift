//
//  NetworkManager.swift
//  RepSet
//
//  Created by Quinn on 23/08/2024.
//

import Foundation

struct NetworkManager {
    
    private let mockDataURL = "https://run.mocky.io/v3/4a947ad5-aee0-4b87-9093-9b65681c022c"

    func fetchSessions() async throws -> [RSSession] {
        guard let url = URL(string: mockDataURL) else { throw RSError.invalidURL }
        let session = URLSession.shared
        let (data, _) = try await session.data(from: url)
        let decoder = JSONDecoder()
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd HH:mm:ss Z"
        decoder.dateDecodingStrategy = .formatted(dateFormatter)
        // For take-home test purposes, JSON is a single RSSession. In production, this would nomally expect to receive an array of RSSession objects
        let rsSession = try decoder.decode(RSSession.self, from: data)
        return [rsSession]
    }
    
}
