//
//  UnitsPickerViewModel.swift
//  SPARAPP
//
//  Created by Melania Dababi on 8/19/24.
//

import SwiftUI

class UnitsPickerViewModel: ObservableObject {
   @Published var product: Product
    
    init(product: Product) {
        self.product = product
    }
}

