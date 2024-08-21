//
//  CellViewModel.swift
//  SPARAPP
//
//  Created by Melania Dababi on 8/19/24.
//

import SwiftUI

class CellViewModel: ObservableObject {
    @Published var product: Product
    @Published var kilograms: Float = 0
    @Published var piece: Int = 0
    @Published var killoToggle = true
    @Published var pieceToggle = false
    @Published var basketButton = false
    
    init(product: Product) {
        self.kilograms = 0.1
        self.piece = 1
        self.product = product
    }
    
    func decreaseAmount() {
        if killoToggle {
            if kilograms <= 0.1 {
                basketButton.toggle()
            }
            kilograms -= (kilograms >= 0.1) ? 0.1 : 0
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
}
