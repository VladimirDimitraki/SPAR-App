//
//  ListViewModel.swift
//  SPARAPP
//
//  Created by Melania Dababi on 8/21/24.
//

import SwiftUI

class ListViewModel: ViewModel {
    @Published var product: Product
    
    init(product: Product) {
        self.product = product
    }
    
    func selectedColor(labelSale: LabelSale) -> Color {
        var color: Color = .clear
        
        switch labelSale {
        case .cardPrice:
            color = Color("cardPriceColor")
        case .new:
            color = Color("newColor")
        case .priceShock:
            color = Color("shockPriceColor")
        }
        
        return color
    }
}
