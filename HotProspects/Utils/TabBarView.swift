//
//  TabBarView.swift
//  HotProspects
//
//  Created by mac on 21/11/2024.
//

import SwiftUI

struct TabBarView: View {
    @State private var selectedTab = "One"

       var body: some View {
           TabView(selection: $selectedTab) {
               Button("Show Tab 2") {
                   selectedTab = "Two"
               }
               .tabItem {
                   Label("One", systemImage: "star")
               }
               .tag("One")

               Text("Tab 2")
                   .tabItem {
                       Label("Two", systemImage: "circle")
                   }
                   .tag("Two")
           }
       }
}

#Preview {
    TabBarView()
}
