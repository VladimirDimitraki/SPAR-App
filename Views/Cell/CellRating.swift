//
//  CellRating.swift
//  SPARAPP
//
//  Created by Melania Dababi on 8/12/24.
//

import SwiftUI

struct CellRating: View {
    var body: some View {
        HStack {
            Image("Vector1")
                .font(.system(size: 12))
                .foregroundColor(Color.yellow)
            Text("5.0")
                .font(.system(size: 12))
        }
    }
}

struct CellRating_Previews: PreviewProvider {
    static var previews: some View {
        CellRating()
    }
}
