//
//  ListView.swift
//  SPARAPP
//
//  Created by Melania Dababi on 8/21/24.
//

import SwiftUI

struct ListView: View {
    @ObservedObject var viewModel: ListViewModel
    
    var body: some View {
        HStack {
            ListImageLayer(viewModel: viewModel)
            
            ListDescriptionLayer(viewModel: viewModel)
                .frame(width: 199, height: 144)
        }
        .frame(width: 375, height:  176)
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView(viewModel: ListViewModel(product: Product(image: "Card-image8",
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
