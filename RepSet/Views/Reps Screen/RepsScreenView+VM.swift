//
//  RepsScreenView+VM.swift
//  RepSet
//
//  Created by Quinn on 23/08/2024.
//

import Foundation
import Observation

extension RepsScreenView {
    @Observable
    final class ViewModel {
        
        var reps: [RSRep]
        
        var averageRepSpeed: Float {
            let speeds = reps.map { $0.speed }
            let sum = speeds.reduce(0, +)
            return sum / Float(speeds.count)
        }
        
        var averageRepSpeedString: String {
            String(format: "%.2f", averageRepSpeed)
        }
        
        init(reps: [RSRep]) {
            self.reps = reps
        }
    }
    
}
