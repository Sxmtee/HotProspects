//
//  SelectList.swift
//  HotProspects
//
//  Created by mac on 21/11/2024.
//

import SwiftUI

struct SelectList: View {
    let users = ["Tohru", "Yuki", "Kio", "Mummiji"]
    @State private var selection = Set<String>()
    
    var body: some View {
        List(users, id: \.self, selection: $selection) { user in
            Text(user)
        }
        
        if selection.isEmpty == false {
            Text("You selected \(selection.formatted())")
        }
        
        EditButton()
    }
}

#Preview {
    SelectList()
}
