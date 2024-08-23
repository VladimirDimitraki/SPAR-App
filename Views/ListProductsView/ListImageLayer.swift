//
//  ListImageLayer.swift
//  SPARAPP
//
//  Created by Melania Dababi on 8/21/24.
//

import SwiftUI

struct ListImageLayer: View {
    @ObservedObject var viewModel: ListViewModel
    
    var body: some View {
        ZStack {
            Image(viewModel.product.image)
                .resizable()
                .scaledToFit()
            
            if let sale = viewModel.product.sale {
                ZStack {
                    Text("\(sale) %")
                        .font(.system(size: 16, design: .rounded))
                        .fontWeight(.bold)
                        .foregroundColor(Color("saleColor"))
                        .frame(width: 42, height: 20)
                }
                .frame(width: 144, height: 144, alignment: .bottomTrailing)
            }
            
            if let saleLabel = viewModel.product.labelSale {
                ZStack {
                    SaleLabel(viewModel: viewModel)
                        .foregroundColor(viewModel.selectedColor(labelSale: saleLabel))
                }
                .frame(width: 144, height: 144, alignment: .topLeading)
            }
        }
        .frame(width: 144, height: 144)
    }
}

struct ListImageLayer_Previews: PreviewProvider {
    static var previews: some View {
        ListImageLayer(viewModel: ListViewModel(product: Product(image: "Card-image8",
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
