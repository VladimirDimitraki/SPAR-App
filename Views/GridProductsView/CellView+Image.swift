//
//  CellView+Image.swift
//  SPARAPP
//
//  Created by Melania Dababi on 8/19/24.
//

import SwiftUI

//MARK: Image layer
extension CellView {
    var imageLayer: some View {
        ZStack {
            image
                .frame(width: 155, height: 155)
            HStack {
                RatingView(viewModel: RatingViewModel(product: viewModel.product))
            }
            .frame(width: 41, height: 20)
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .bottomLeading)
            
            HStack {
                Text("25%")
                    .foregroundColor(Color(red: 195 / 255, green: 35 / 255, blue: 35 / 255))
                    .fontWeight(.bold)
                    .font(.system(size: 16, design: .rounded))
                    .frame(width: 42, height: 20)
                    .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .bottomTrailing)
            }
        }
        .frame(width: 168, height: 168)
    }
}
