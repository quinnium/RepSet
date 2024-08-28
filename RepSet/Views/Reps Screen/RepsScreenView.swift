//
//  RepsScreenView.swift
//  RepSet
//
//  Created by Quinn on 23/08/2024.
//

import SwiftUI
import Charts

struct RepsScreenView: View {
    
    let viewModel: ViewModel
    
    var body: some View {
        HStack {
            List(viewModel.reps) { rep in
                VStack {
                    Text("Speed: \(rep.speed)")
                    Text("Intensity: \(rep.intensity)")
                }
            }
        }
    }
}

//#Preview {
//    RepsScreenView()
//}
