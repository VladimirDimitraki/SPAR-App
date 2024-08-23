//
//  ListDescriptionLayer.swift
//  SPARAPP
//
//  Created by Melania Dababi on 8/21/24.
//

import SwiftUI

struct ListDescriptionLayer: View {
    @ObservedObject var viewModel: ListViewModel
    
    var body: some View {
        VStack {
            
            //MARK: Rating
            HStack {
                RatingView(viewModel: RatingViewModel(product: viewModel.product))
                Divider()
                    .frame(width: 1, height: 16)
                    .overlay(Color("dividerColor"))
                Text("19 отзывов")
                    .font(.system(size: 10))
            }
            .frame(width: 107, height: 20, alignment:  .leading)
            .padding(.horizontal, 6)
            
            
            //MARK: Description
            HStack {
                Text(viewModel.product.title)
                    .font(.system(size: 12))
            }
            .frame(width: 199, height: 44, alignment: .leading)
            
            //MARK: Piece & Kilo
            if viewModel.basketButton {
                HStack {
                    UnitsPicker()
                }
                .frame(width: 160, height: 28)
            }
            
            HStack {
                if !viewModel.basketButton {
                    PriceLayer(viewModel: PriceLayerViewModel(product: viewModel.product))                        .padding(4)
                }
                
                Spacer()
                
                ButtonBasketView(viewModel: ButtonBasketViewModel(product: viewModel.product))
            }
            .padding(4)
            .frame(width: 168, height: 44)
        }
    }
}

struct ListDescriptionLayer_Previews: PreviewProvider {
    static var previews: some View {
        ListDescriptionLayer(viewModel: ListViewModel(product: Product(image: "Card-image8",
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
