//
//  UnitsPicker.swift
//  SPARAPP
//
//  Created by Melania Dababi on 8/19/24.
//

import SwiftUI

struct UnitsPicker: View {
    @State var metric: Metrics = .kilo
    
    var body: some View {
        Picker("Picker", selection: $metric) {
            ForEach(Metrics.allCases, id: \.self) { metr in
                Text(metr.rawValue)
            }
        }
        .pickerStyle(.segmented)
    }
}

struct Preview_Picker: PreviewProvider {
    static var previews: some View {
        UnitsPicker()
    }
}
