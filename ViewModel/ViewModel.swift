//
//  ViewModel.swift
//  SPARAPP
//
//  Created by Melania Dababi on 8/19/24.
//

import SwiftUI

class ViewModel: ObservableObject {
    @Published var kilograms: Float = 0.1
    @Published var piece: Int = 1
    @Published var killoToggle = true
    @Published var pieceToggle = false
    @Published var basketButton = false
    private let model: Model = Model()
    @Published var selectedView = false

    func decreaseAmount() {
        if killoToggle {
            if kilograms <= 0.1 {
                basketButton.toggle()
            }
            kilograms -= (kilograms > 0.1) ? 0.1 : 0
        }
        else {
            if piece < 1 {
                basketButton.toggle()
            }
            piece -= (piece > 0) ? 1 : 0
        }
    }
    
    func increaseAmount() {
        if killoToggle {
            kilograms += 0.1
        }
        else {
            piece += 1
        }
    }
    
    func selectedAmount() -> String {
        let amount: String = killoToggle ? "\(kilograms) кг" : "\(piece) шт"
        return amount
    }
    
    func toggleKilo() {
        pieceToggle = false
        killoToggle = true
    }
    
    func togglePiece() {
        pieceToggle = true
        killoToggle = false
    }
    
    func getProducts() -> [Product] {
        model.products
    }
    
}
