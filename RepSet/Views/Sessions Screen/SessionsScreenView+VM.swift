//
//  SessionsScreenView+VM.swift
//  RepSet
//
//  Created by Quinn on 23/08/2024.
//

import Foundation
import Observation

extension SessionsScreenView {
    @Observable
    final class ViewModel {
     
        let networkManager = NetworkManager()
        var sessions: [RSSession] = []
        
        init() {
            Task {
                await fetchData()
            }
        }
        
        private func fetchData() async {
            do {
                // Fetching 'dictionary' (rather than model objects) for now to test
                sessions = try await networkManager.fetchSessions()
                print(sessions)
            } catch {
                print(error.localizedDescription)
            }
            
        }
    }
}
