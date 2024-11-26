//
//  ImportPackage.swift
//  HotProspects
//
//  Created by mac on 25/11/2024.
//

import SwiftUI
import SamplePackage

struct ImportPackage: View {
    let possibleNumbers = 1...60
    
    var results: String {
        let selected = possibleNumbers.random(7).sorted()
        let strings = selected.map(String.init)
        return strings.formatted()
    }
    
    var body: some View {
        Text(results)
    }
}

#Preview {
    ImportPackage()
}
