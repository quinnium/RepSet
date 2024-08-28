//
//  SessionsScreenView.swift
//  RepSet
//
//  Created by Quinn on 23/08/2024.
//

import SwiftUI

struct SessionsScreenView: View {
    
    var viewModel = ViewModel()
    
    var body: some View {
        NavigationStack {
            List(viewModel.sessions) { session in
                NavigationLink("Example Session") {
                    SetsScreenView(viewModel: .init(sets: session.sets))
                }
            }
            .navigationTitle("Sessions")
        }
    }
}

#Preview {
    SessionsScreenView()
}
