//
//  ViewModel.swift
//  SPARAPP
//
//  Created by Melania Dababi on 8/19/24.
//

import SwiftUI

class ViewModel: ObservableObject {
    private let model: Model = Model()
    
    func getProducts() -> [Product] {
        model.products
    }
}
