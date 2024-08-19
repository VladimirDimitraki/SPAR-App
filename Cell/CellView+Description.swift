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
            //MARK: Amount
            HStack {
                if viewModel.basketButton {
                    amountButton
                }
            }
            .frame(width: 110, height: 18)
            //MARK: Price and Button layer
            HStack {
                if viewModel.basketButton {
                    animatedBasketButton
                } else {
                    priceLayer
                        .padding(9)
                    buttonLayer
                        .padding(4)
                }
            }
            .frame(width: 168, height: 44)
        }
        .frame(width: 168, height: 110)
    }
}
