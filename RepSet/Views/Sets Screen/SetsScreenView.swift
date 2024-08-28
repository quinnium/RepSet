//
//  SetsScreenView.swift
//  RepSet
//
//  Created by Quinn on 23/08/2024.
//

import SwiftUI

struct SetsScreenView: View {
    
    let viewModel: ViewModel
    
    var body: some View {
        List(viewModel.sets) { set in
            NavigationLink {
                RepsScreenView(viewModel: .init(reps: set.reps))
            } label: {
                Text(set.timestamp.description)
            }

        }
        .navigationTitle("Sets")
    }
}
//
//#Preview {
//    SetsScreenView()
//}
