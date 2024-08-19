//
//  CellView+ButtonBasket.swift
//  SPARAPP
//
//  Created by Melania Dababi on 8/19/24.
//

import SwiftUI

//MARK: Button layer
extension CellView {
    var buttonLayer: some View {
        HStack {
            Button {
                viewModel.basketButton.toggle()
            } label: {
                ZStack {
                    Rectangle()
                        .frame(width: viewModel.basketButton ? 160 : 48, height: 36)
                        .cornerRadius(40)
                    ZStack {
                        Image("Bag")
                            .resizable()
                            .scaledToFit()
                            .padding(1)
                    }
                    .frame(width: 16, height: 16)
                }
                .frame(width: 48, height: 36)
            }
            .foregroundColor(Color(red: 21 / 255, green: 183 / 255, blue: 66 / 255))
        }
        .animation(.spring(), value: viewModel.basketButton)
    }
}
