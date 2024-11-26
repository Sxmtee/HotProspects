//
//  ResultType.swift
//  HotProspects
//
//  Created by mac on 21/11/2024.
//

import SwiftUI

struct ResultType: View {
    @State private var output = ""
    
    func fetchReadings() async {
        let fetchTask = Task {
            let url = URL(string: "https://hws.dev/readings.json")!
            let (data, _) = try await URLSession.shared.data(from: url)
            let readings = try JSONDecoder().decode([Double].self, from: data)
            return "Found \(readings.count) readings"
        }
        
        let result = await fetchTask.result
        
        do {
            output = try result.get()
        } catch {
            output = "Error: \(error.localizedDescription)"
        }
    }

    var body: some View {
        Text(output)
            .task {
                await fetchReadings()
            }
    }
}

#Preview {
    ResultType()
}
