//
//  CellView+Price.swift
//  SPARAPP
//
//  Created by Melania Dababi on 8/19/24.
//

import SwiftUI

//MARK: Price layer
struct PriceLayer: View {
    var viewModel: PriceLayerViewModel
    
    var body: some View {
        VStack {
            //MARK: Actual Price
            GeometryReader { geo in
                HStack(alignment: .center, spacing: 0) {
                    //MARK: Big price
                    Text("\(viewModel.product.currentPrice)")
                        .font(.system(size: 20))
                    //MARK: Cent price
                    Text("99")
                        .font(.system(size: 16))
                    
                    //MARK: Icon per amount
                    Image("PerAmountIcon")
                }
                .fontWeight(.bold)
                .kerning(-1)
                .padding(.trailing, 2)
            }
            
            //MARK: Old Price
            HStack {
                Text("199,0")
                    .strikethrough()
                    .foregroundColor(.gray)
                    .font(.system(size: 12))
            }
            .frame(width: 67, alignment: .leading)
        }
        .frame(width: 71, height: 36, alignment: .topTrailing)
    }
}

struct Price_Previews: PreviewProvider {
    static var previews: some View {
        PriceLayer(viewModel: PriceLayerViewModel(product: Product(image: "Card-image11",
                                                                   title: "Курица маринованная длинное название",
                                                                   sale: nil,
                                                                   rating: 4.9,
                                                                   oldPrice: 4.2,
                                                                   currentPrice: 129.90,
                                                                   amountName: "Кш",
                                                                   minimumAmount: 1, metrics: .kilo,
                                                                   labelSale: nil)))
    }
}

