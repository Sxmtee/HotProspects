//
//  SwipeToDelete.swift
//  HotProspects
//
//  Created by mac on 25/11/2024.
//

import SwiftUI

struct SwipeToDelete: View {
    var body: some View {
        List {
            Text("Taylor Swift")
                .swipeActions {
                    Button("Delete", systemImage: "minus.circle", role: .destructive) {
                        print("Deleting")
                    }
                }
                .swipeActions(edge: .leading) {
                    Button("Pin", systemImage: "pin") {
                        print("Pinning")
                    }
                    .tint(.orange)
                }
        }
    }
}

#Preview {
    SwipeToDelete()
}
