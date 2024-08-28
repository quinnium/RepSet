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
        
        init(reps: [RSRep]) {
            self.reps = reps
        }
    }
    
}
