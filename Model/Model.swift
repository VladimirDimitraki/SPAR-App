//
//  Data.swift
//  SPARAPP
//
//  Created by Melania Dababi on 8/8/24.
//

import SwiftUI

struct Model {
    let products: [Product] = [
        Product(image: "Image",
                title: "Курица маринованная",
                sale: nil,
                rating: 4.1,
                oldPrice: 4.2,
                currentPrice: 129.90,
                amountName: "Кг",
                minimumAmount: 1,
                metrics: .kilo
               ),
        Product(image: "Image0",
                title: "Курица маринованная",
                sale: 25,
                rating: 4.1,
                oldPrice: 4.2,
                currentPrice: 129.90,
                amountName: "Кг",
                minimumAmount: 1,
                metrics: .kilo),
        Product(image: "Card-image1",
                title: "Курица маринованная",
                sale: nil,
                rating: 4.1,
                oldPrice: 4.2,
                currentPrice: 129.90,
                amountName: "Кг",
                minimumAmount: 1,
                metrics: .kilo),
        Product(image: "Card-image2",
                title: "Курица маринованная",
                sale: nil,
                rating: 4.1,
                oldPrice: 4.2,
                currentPrice: 129.90,
                amountName: "Кг",
                minimumAmount: 1,
                metrics: .piece),
        Product(image: "Card-image3",
                title: "Курица маринованная",
                sale: nil,
                rating: 4.1,
                oldPrice: 4.2,
                currentPrice: 129.90,
                amountName: "Кг",
                minimumAmount: 1,
                metrics: nil),
        Product(image: "Card-image4",
                title: "Курица маринованная",
                sale: 10,
                rating: 4.1,
                oldPrice: 4.2,
                currentPrice: 129.90,
                amountName: "Кг",
                minimumAmount: 1,
                metrics: nil),
        Product(image: "Card-image5",
                title: "Курица маринованная",
                sale: nil,
                rating: 4.1,
                oldPrice: 4.2,
                currentPrice: 129.90,
                amountName: "Кг",
                minimumAmount: 1,
                metrics: nil),
        Product(image: "Card-image6",
                title: "Курица маринованная",
                sale: nil,
                rating: 4.1,
                oldPrice: 4.2,
                currentPrice: 129.90,
                amountName: "Кг",
                minimumAmount: 1,
                metrics: nil),
        Product(image: "Card-image7",
                title: "Курица маринованная",
                sale: nil,
                rating: 4.1,
                oldPrice: 4.2,
                currentPrice: 129.90,
                amountName: "Кг",
                minimumAmount: 1,
                metrics: nil),
        Product(image: "Card-image8",
                title: "Курица маринованная",
                sale: nil,
                rating: 4.1,
                oldPrice: 4.2,
                currentPrice: 129.90,
                amountName: "Кг",
                minimumAmount: 1,
               metrics: nil),
        Product(image: "Card-image9",
                title: "Курица маринованная",
                sale: nil,
                rating: 4.1,
                oldPrice: 4.2,
                currentPrice: 129.90,
                amountName: "Кг",
                minimumAmount: 1,
                metrics: nil),
        Product(image: "Card-image10",
                title: "Курица маринованная",
                sale: nil,
                rating: 4.1,
                oldPrice: 4.2,
                currentPrice: 129.90,
                amountName: "Кг",
                minimumAmount: 1,
                metrics: nil),
        Product(image: "Card-image11",
                title: "Курица маринованная",
                sale: 15,
                rating: 3.2,
                oldPrice: 4.2,
                currentPrice: 129.90,
                amountName: "Кг",
                minimumAmount: 1,
                metrics: nil)
    ]
}

struct Product: Hashable {
    let image: String
    let title: String
    let sale: Int?
    let rating: Float
    let oldPrice: Float
    let currentPrice: Float
    let amountName: String
    let minimumAmount: Float
    let metrics: Metrics?
}

enum Metrics: String, CaseIterable, Hashable {
    case kilo = "Кг"
    case piece = "Шт"
}
