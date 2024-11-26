//
//  ImageInterpolation.swift
//  HotProspects
//
//  Created by mac on 21/11/2024.
//

import SwiftUI

struct ImageInterpolation: View {
    var body: some View {
        Image(.example)
            .interpolation(.none)
            .resizable()
            .scaledToFit()
            .background(.black)
    }
}

#Preview {
    ImageInterpolation()
}
