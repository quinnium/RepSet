//
//  RSRep.swift
//  RepSet
//
//  Created by Quinn on 23/08/2024.
//

import Foundation

struct RSRep: Decodable, Identifiable {
    
    let id: UUID
    let speed: Float
    let intensity: Float
    let timestamp: Date
    
    enum CodingKeys: CodingKey {
        case id
        case speed
        case intensity
        case timestamp
    }
    
    init(from decoder: any Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.id = UUID()
        self.speed = try container.decode(Float.self, forKey: .speed)
        self.intensity = try container.decode(Float.self, forKey: .intensity)
        self.timestamp = try container.decode(Date.self, forKey: .timestamp)
    }
}
