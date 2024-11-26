//
//  SortableProspectView.swift
//  HotProspects
//
//  Created by mac on 26/11/2024.
//

import SwiftUI

struct SortableProspectView: View {
    let filter: ProspectView.FilterType
    @State private var sortOrder = SortDescriptor(\Prospect.name)

    var body: some View {
        NavigationStack {
            ProspectView(filter: filter, sort: sortOrder)
                .toolbar {
                    ToolbarItem(placement: .topBarTrailing) {
                        Menu("Sort") {
                            Picker("Sort Order", selection: $sortOrder) {
                                Text("Date Added")
                                    .tag(SortDescriptor(\Prospect.dateAdded))

                                Text("Name")
                                    .tag(SortDescriptor(\Prospect.name))
                            }
                        }
                    }
                }
        }
    }
}

#Preview {
    SortableProspectView(filter: .none)
}
