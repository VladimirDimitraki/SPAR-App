//
//  CellView+Description.swift
//  SPARAPP
//
//  Created by Melania Dababi on 8/19/24.
//

import SwiftUI

//MARK: Description layer
extension CellView {
    var descriptionLayer: some View {
        VStack {
            HStack {
                Text(viewModel.product.title)
                    .font(.system(size: 14))
                    .multilineTextAlignment(.center)
            }
            .frame(width: 152)
            
            Spacer()
            
            if viewModel.basketButton {}
            
            HStack {
                if !viewModel.basketButton {
                        PriceLayer(viewModel: PriceLayerViewModel(product: viewModel.product))
                            .padding(4)
                }
                
            Spacer()
                
                ButtonBasketView(viewModel: ButtonBasketViewModel(product: viewModel.product))
                    .frame(width: viewModel.basketButton ? 168 : 48, alignment: .trailing)
            }
            .padding(4)
            .frame(width: 168, height: 44)
            
            if viewModel.basketButton {
                UnitsPicker()
            }
        }
        .frame(width: 168, height: viewModel.basketButton ? 130 : 110)
    }
}

struct CellD_Previews: PreviewProvider {
    static var previews: some View {
        CellView(viewModel: CellViewModel(product: Product(image: "Card-image11",
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

