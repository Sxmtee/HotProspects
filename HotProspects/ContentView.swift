//
//  ContentView.swift
//  HotProspects
//
//  Created by mac on 20/11/2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            SortableProspectView(filter: .none)
                .tabItem {
                    Label("Everyone", systemImage: "person.3")
                }

            SortableProspectView(filter: .contacted)
                .tabItem {
                    Label("Contacted", systemImage: "checkmark.circle")
                }

            SortableProspectView(filter: .uncontacted)
                .tabItem {
                    Label("Uncontacted", systemImage: "questionmark.diamond")
                }

            MeView()
                .tabItem {
                    Label("Me", systemImage: "person.crop.square")
                }
        }
    }
}

#Preview {
    ContentView()
}
