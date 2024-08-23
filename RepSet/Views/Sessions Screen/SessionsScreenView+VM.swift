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
        var dict: [String: Any] = [:]
        
        init() {
            Task {
                await fetchData()
            }
        }
        
        func fetchData() async {
            do {
                // Fetching 'dictionary' (rather than model objects) for now to test
                dict = try await networkManager.fetchDictionary()
                print(dict)
            } catch {
                print(error.localizedDescription)
            }
            
        }
        
    }
}
