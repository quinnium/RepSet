//
//  RSSession.swift
//  RepSet
//
//  Created by Quinn on 23/08/2024.
//

import Foundation

struct RSSession: Decodable, Identifiable {
    
    let id: UUID
    let sets: [RSSet]
    
    enum CodingKeys: CodingKey {
        case id
        case sets
    }
    
    init(from decoder: any Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.id = UUID()
        self.sets = try container.decode([RSSet].self, forKey: .sets)
    }
    
}
