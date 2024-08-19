//
//  CellView+ButtonBasket.swift
//  SPARAPP
//
//  Created by Melania Dababi on 8/19/24.
//

import SwiftUI

//MARK: Button layer
extension CellView {
    private var amount: some View {
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
                Text("~9,99 ₽")
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
        
    private var basket: some View {
        Image("Bag")
            .resizable()
            .padding(1)
            .frame(width: 16, height: 16)
    }
    
    private var basketContainer: some View {
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
                .foregroundColor(Color(red: 21 / 255, green: 183 / 255, blue: 66 / 255))
        }
        .frame(width: viewModel.basketButton ? 160 : 48, height: 36)
    }
    var buttonLayer: some View {
        Button {
            viewModel.basketButton = true
        } label: {
            basketContainer
        }
        .frame(width: 168, height: 36, alignment: viewModel.basketButton ? .center : .trailing)
        .animation(.spring(), value: viewModel.basketButton)
    }
}
