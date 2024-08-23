//
//  PriceLayerViewModel.swift
//  SPARAPP
//
//  Created by Melania Dababi on 8/22/24.
//

import SwiftUI

class PriceLayerViewModel: ViewModel {
    @Published var product: Product
    
    init(product: Product) {
        self.product = product
    }
}
