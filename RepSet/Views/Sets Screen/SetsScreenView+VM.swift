//
//  SetsScreenView+VM.swift
//  RepSet
//
//  Created by Quinn on 23/08/2024.
//

import Foundation
import Observation

extension SetsScreenView {
    @Observable
    final class ViewModel {
        
        var sets: [RSSet]
        
        init(sets: [RSSet]) {
            self.sets = sets
        }
    }
    
}
