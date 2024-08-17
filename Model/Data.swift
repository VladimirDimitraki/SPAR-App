//
//  Data.swift
//  SPARAPP
//
//  Created by Melania Dababi on 8/8/24.
//

import SwiftUI

struct MockProducts {
    let products: [Product] = [
        Product(image: "Image",
                title: "Курица маринованная",
                sale: nil,
                amountIndicator: (amountName: "piece", minimumAmount: 0.1),
                rating: 4.2,
                oldPrice: 129.90,
                currentPrice: 99.90),
        Product(image: "Image0",
                title: "Курица маринованная",
                sale: nil,
                amountIndicator: (amountName: "piece", minimumAmount: 0.1),
                rating: 4.2,
                oldPrice: 129.90,
                currentPrice: 99.90),
        Product(image: "Card-image1",
                title: "Курица маринованная",
                sale: nil,
                amountIndicator: (amountName: "piece", minimumAmount: 0.1),
                rating: 4.2,
                oldPrice: 129.90,
                currentPrice: 99.90),
        Product(image: "Card-image2",
                title: "Курица маринованная",
                sale: nil,
                amountIndicator: (amountName: "piece", minimumAmount: 0.1),
                rating: 4.2,
                oldPrice: 129.90,
                currentPrice: 99.90),
        Product(image: "Card-image3",
                title: "Курица маринованная",
                sale: nil,
                amountIndicator: (amountName: "piece", minimumAmount: 0.1),
                rating: 4.2,
                oldPrice: 129.90,
                currentPrice: 99.90),
        Product(image: "Card-image4",
                title: "Курица маринованная",
                sale: nil,
                amountIndicator: (amountName: "piece", minimumAmount: 0.1),
                rating: 4.2,
                oldPrice: 129.90,
                currentPrice: 99.90),
        Product(image: "Card-image5",
                title: "Курица маринованная",
                sale: nil,
                amountIndicator: (amountName: "piece", minimumAmount: 0.1),
                rating: 4.2,
                oldPrice: 129.90,
                currentPrice: 99.90),
        Product(image: "Card-image6",
                title: "Курица маринованная",
                sale: nil,
                amountIndicator: (amountName: "piece", minimumAmount: 0.1),
                rating: 4.2,
                oldPrice: 129.90,
                currentPrice: 99.90),
        Product(image: "Card-image7",
                title: "Курица маринованная",
                sale: nil,
                amountIndicator: (amountName: "piece", minimumAmount: 0.1),
                rating: 4.2,
                oldPrice: 129.90,
                currentPrice: 99.90),
        Product(image: "Card-image8",
                title: "Курица маринованная",
                sale: nil,
                amountIndicator: (amountName: "piece", minimumAmount: 0.1),
                rating: 4.2,
                oldPrice: 129.90,
                currentPrice: 99.90),
        Product(image: "Card-image9",
                title: "Курица маринованная",
                sale: nil,
                amountIndicator: (amountName: "piece", minimumAmount: 0.1),
                rating: 4.2,
                oldPrice: 129.90,
                currentPrice: 99.90),
        Product(image: "Card-image10",
                title: "Курица маринованная",
                sale: nil,
                amountIndicator: (amountName: "piece", minimumAmount: 0.1),
                rating: 4.2,
                oldPrice: 129.90,
                currentPrice: 99.90),
        Product(image: "Card-image11",
                title: "Курица маринованная",
                sale: nil,
                amountIndicator: (amountName: "piece", minimumAmount: 0.1),
                rating: 4.2,
                oldPrice: 129.90,
                currentPrice: 99.90),
    ]
}

struct Product: Hashable {
    let image: String
    let title: String
    let sale: Int?
    let amountIndicator: (amountName: String, minimumAmount: Float)
    let rating: Float
    let oldPrice: Float
    let currentPrice: Float
}

let arrayImages: [String] = [
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
