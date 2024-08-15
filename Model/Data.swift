//
//  Data.swift
//  SPARAPP
//
//  Created by Melania Dababi on 8/8/24.
//

import SwiftUI

struct DataImages {
    let arrayImages: [String] = [
        "Image0",
        "Image",
        "Card-image0",
        "Card-image1",
        "Card-image2",
        "Card-image3",
        "Card-image4",
        "Card-image5",
        "Card-image6",
        "Card-image7",
        "Card-image8",
        "Card-image9",
        "Card-image10",
        "Card-image11"
    ]
}

struct DataItemsInFirstView {
    let gridItem: [GridItem] = [
        GridItem(.fixed(170), spacing: 5),
        GridItem(.fixed(170), spacing: 5)
    ]
}

enum ButtonPosition {
    case kilogram(Bool)
    case piece(Bool)
}
