//
//  Cell.swift
//  SPARAPP
//
//  Created by Melania Dababi on 8/8/24.
//

import SwiftUI

struct CellView: View {
    @ObservedObject var viewModel: CellViewModel
    
    var body: some View {
        //MARK: Main cell
        ZStack(alignment: .topTrailing) {
            VStack {
                //MARK: Image layer
                imageLayer
                //MARK: Description layer
                descriptionLayer
                    .padding(.bottom, 4)
                
            }
            .frame(width: 168, height: 278)
            
            //MARK: Actrion layer
            actionLayer
        }
        .frame(width: 168, height: 278)
    }
}

struct Cell_Previews: PreviewProvider {
    static var previews: some View {
        CellView(viewModel: CellViewModel(product: Product(image: "Card-image11",
                                                                    title: "Курица маринованная",
                                                                    sale: nil,
                                                                    rating: 4.9,
                                                                    oldPrice: 4.2,
                                                                    currentPrice: 129.90,
                                                                    amountName: "Кш",
                                                                    minimumAmount: 1, metrics: .kilo)))
    }
}

//MARK: Action layer
extension CellView {
    var actionLayer: some View {
        Button {
        } label: {
            VStack {
                VStack(spacing: 0) {
                    ZStack() {
                        Image("actionlist")
                            .resizable()
                            .frame(width: 16, height: 16)
                    }
                    .frame(width: 32, height: 32)
                    ZStack {
                        Image("actionheart")
                            .resizable()
                            .frame(width: 13, height: 12)
                    }
                    .frame(width: 32, height: 32)
                    
                }
                .frame(width: 32, height: 64)
                .background(Color.white)
                .cornerRadius(20)
            }
            .frame(width: 32, height: 64)
        }
    }
}

extension CellView {
    var image: some View {
        Image(viewModel.product.image)
            .resizable()
            .scaledToFit()
            .aspectRatio(contentMode: .fit)
    }
}
