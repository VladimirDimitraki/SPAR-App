//
//  ViewModel.swift
//  SPARAPP
//
//  Created by Melania Dababi on 8/17/24.
//

import SwiftUI

class ViewModelCell: ObservableObject {
    @Published var mockProducts = MockProducts()
    @Published var kilograms: Float = 0
    @Published var piece: Int = 0
    @Published var killoToggle = true
    @Published var pieceToggle = false
    @Published var basketButton = true
    @Published var gridItems: [GridItem]
    
    init(killoToggle: Bool = true, pieceToggle: Bool = false, basketButton: Bool = true) {
        self.kilograms = 0.1
        self.piece = 1
        self.killoToggle = killoToggle
        self.pieceToggle = pieceToggle
        self.basketButton = basketButton
        self.gridItems = [GridItem(.fixed(170), spacing: 5),
                          GridItem(.fixed(170), spacing: 5)]
    }
    
    func decreaseAmount() {
        if killoToggle {
            if kilograms < 0.1 {
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
