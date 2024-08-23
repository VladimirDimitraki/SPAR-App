//
//  CellRating.swift
//  SPARAPP
//
//  Created by Melania Dababi on 8/12/24.
//

import SwiftUI

class RatingViewModel: ObservableObject {
    @Published var product: Product
    
    init(product: Product) {
        self.product = product
    }
}

struct RatingView: View {
    @ObservedObject var viewModel: RatingViewModel
    
    var body: some View {
        HStack {
            ZStack {
                Image("Vector1")
                    .resizable()
                    .scaledToFit()
                    .foregroundColor(Color.yellow)
                    .frame(width: 12, height: 12)
            }
            
            ZStack {
                Text(String(format: "%.1f", viewModel.product.rating))
                    .font(.system(size: 11))
            }
            .frame(width: 17, height: 14)
            
        }
        .frame(width: 33, height: 16)
    }
}

struct RatingView_Previews: PreviewProvider {
    static var previews: some View {
        RatingView(viewModel: RatingViewModel(product: Product(image: "Card-image8",
                                                               title: "Курица маринованная длинное название",
                                                               sale: 15,
                                                               rating: 4.9,
                                                               oldPrice: 4.2,
                                                               currentPrice: 129.90,
                                                               amountName: "Кш",
                                                               minimumAmount: 1, metrics: .kilo,
                                                               labelSale: .priceShock)))
    }
}
