//
//  NetworkManager.swift
//  RepSet
//
//  Created by Quinn on 23/08/2024.
//

import Foundation

struct NetworkManager {
    
    private let mockDataURL = "https://run.mocky.io/v3/541fe76b-7ff1-48cf-90a3-bb145a300d6d"
    
    func fetchDictionary() async throws -> [String: Any] {
        let data = try await downloadJSONdata()
        let rawJSON = try JSONSerialization.jsonObject(with: data, options: [])
        if let dictionary = rawJSON as? [String: Any] {
            return dictionary
        } else {
            throw RSError.invalidData
        }
    }
    
    private func downloadJSONdata() async throws -> Data {
        guard let url = URL(string: mockDataURL) else { throw RSError.invalidURL }
        var urlRequest = URLRequest(url: url)
        urlRequest.httpMethod = "GET"
        urlRequest.setValue("application/json", forHTTPHeaderField: "Accept")
        let session = URLSession.shared
        let (data, response) = try await session.data(for: urlRequest)
        return data
    }
    
}
