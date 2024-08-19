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
                Text("Rutrum tortor consectetur, bibendum")
                    .font(.system(size: 14))
                    .multilineTextAlignment(.center)
            }
            
            .frame(height: 18)
            .padding(.horizontal, 4)
            
            buttonLayer
                .padding(4)
            
            if viewModel.basketButton {
                UnitsPicker(viewModel: )
                    .padding(4)
            }
            
            
        }
        .frame(width: 168, height: 110)
        .animation(.default, value: viewModel.basketButton)
    }
}

struct CellD_Previews: PreviewProvider {
    static var previews: some View {
        CellView(viewModel: ViewModelCell() ,product: Product(image: "Card-image11",
                                                              title: "Курица маринованная",
                                                              sale: nil,
                                                              rating: 4.9,
                                                              oldPrice: 4.2,
                                                              currentPrice: 129.90,
                                                              amountName: "Кш",
                                                              minimumAmount: 1, metrics: .kilo))
    }
}
