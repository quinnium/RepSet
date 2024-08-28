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
        
        func timeString(from date: Date) -> String {
            let dateFomatter = DateFormatter()
            dateFomatter.timeStyle = .short
            return dateFomatter.string(from: date)
        }
    }
    
}
