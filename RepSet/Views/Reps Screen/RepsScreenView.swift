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
        VStack {
            Chart {
                ForEach(Array(viewModel.reps.enumerated()), id: \.offset) { index, rep in
                    LineMark(x: .value("Rep", (index + 1)),
                             y: .value("Speed", rep.speed))
                    PointMark(x: .value("Rep", (index + 1)),
                              y: .value("Speed", rep.speed))
                    .symbol(.circle)
                    RuleMark(y: .value("Average", viewModel.averageRepSpeed))
                        .foregroundStyle(.pink)
                        .lineStyle(StrokeStyle(lineWidth: 1, dash: [5]))
                        .annotation(alignment: .leading) {
                            Text("Average: \(viewModel.averageRepSpeedString)")
                                .font(.caption)
                                .foregroundStyle(.pink)
                        }
                }
                
            }
            .chartXScale(domain: 1...viewModel.reps.count)
            .chartXAxis { }
            .chartYAxisLabel("Speed", position: .trailing)
            .frame(height: 200)
            .padding(.horizontal)
            List(viewModel.reps) { rep in
                HStack {
                    Text("Speed: \(String(format: "%.2f", rep.speed))")
                        .frame(width: 150)
                    Spacer()
                    Text("Intensity: \(String(format: "%.2f", rep.intensity))")
                        .frame(width: 150)
                }
            }
        }
        .navigationTitle("Reps")
    }
}

#Preview {
    RepsScreenView(viewModel: .init(reps: []))
}
