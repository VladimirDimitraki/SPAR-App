//
//  CellView+AnimatedButton.swift
//  SPARAPP
//
//  Created by Melania Dababi on 8/19/24.
//

import SwiftUI

//MARK: Animated Button
extension CellView {
    var animatedBasketButton: some View {
        Button {
            viewModel.basketButton.toggle()
        } label: {
            HStack {
                Rectangle()
                    .fill(Color(red: 21 / 255, green: 183 / 255, blue: 66 / 255))
                    .cornerRadius(40)
                    .overlay {
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
                    .frame(width: 160, height: 36)
            }
        }
    }
}
