//
//  UnitsPicker.swift
//  SPARAPP
//
//  Created by Melania Dababi on 8/19/24.
//

import SwiftUI

struct UnitsPicker: View {
    @ObservedObject var viewModel: UnitsPickerViewModel
    
    var body: some View {
        Picker("Picker", selection: $viewModel.product) {
            ForEach(Metrics.allCases, id: \.self) { metr in
                Text(metr.rawValue)
            }
        }
        .pickerStyle(.segmented)
    }
}
