//
//  RSSet.swift
//  RepSet
//
//  Created by Quinn on 23/08/2024.
//

import Foundation

struct RSSet: Decodable, Identifiable {
    
    let id: UUID
    let timestamp: Date
    let reps: [RSRep]
    
    enum CodingKeys: CodingKey {
        case id
        case timestamp
        case reps
    }
    
    init(from decoder: any Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.id = UUID()
        self.timestamp = try container.decode(Date.self, forKey: .timestamp)
        self.reps = try container.decode([RSRep].self, forKey: .reps)
    }
}
