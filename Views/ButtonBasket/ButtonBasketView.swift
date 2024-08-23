//
//  CellView+ButtonBasket.swift
//  SPARAPP
//
//  Created by Melania Dababi on 8/19/24.
//

import SwiftUI

//MARK: Button layer
struct ButtonBasketView: View {
    @ObservedObject var viewModel: ButtonBasketViewModel
    
    var body: some View {
            Button {
                viewModel.basketButton.toggle()
            } label: {
                ZStack {
                    Rectangle()
                        .frame(width: viewModel.basketButton ? 160 : 48, height: 36)
                        .cornerRadius(40)
                        .overlay {
                            switch viewModel.basketButton {
                            case true:
                                amount
                            case false:
                                basket
                            }
                        }
                        .foregroundColor(Color("basketGreenColor"))
                }
                .frame(width: viewModel.basketButton ? 160 : 48, height: 36)
            }
        }
    
        
        var amount: some View {
            HStack {
                Button {
                    viewModel.decreaseAmount()
                } label: {
                    ZStack {
                        Image(systemName: "minus")
                            .resizable()
                            .scaledToFit()
                            .foregroundColor(.white)
                            .frame(width: 14)
                    }
                    .frame(width: 36, height: 36)
                }
                
                Spacer()
                
                VStack {
                    Text("\(viewModel.selectedAmount())")
                        .font(.system(size: 14))
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                    Text("\(viewModel.product.oldPrice)")
                        .font(.system(size: 11))
                        .foregroundColor(.white.opacity(0.8))
                    
                }
                .frame(width: 41, height: 32)
                
                Spacer()
                
                Button {
                    viewModel.increaseAmount()
                } label: {
                    ZStack {
                        Image(systemName: "plus")
                            .resizable()
                            .scaledToFit()
                            .foregroundColor(.white)
                            .frame(width: 14)
                    }
                    .frame(width: 36, height: 36)
                }
            }
        }
    
    var basket: some View {
        Image("Bag")
            .resizable()
            .padding(1)
            .frame(width: 16, height: 16)
    }
}

struct Button_Previews: PreviewProvider {
    static var previews: some View {
        ButtonBasketView(viewModel: ButtonBasketViewModel(product: Product(image: "Card-image11",
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
