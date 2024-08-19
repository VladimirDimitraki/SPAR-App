//
//  Cell.swift
//  SPARAPP
//
//  Created by Melania Dababi on 8/8/24.
//

import SwiftUI

struct CellView: View {
    @ObservedObject var viewModel: ViewModelCell
    var product: Product
    
    var body: some View {
        //MARK: Main cell
        ZStack(alignment: .topTrailing) {
            VStack {
                //MARK: Image layer
                imageLayer
                //MARK: Description layer
                descriptionLayer
                
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
        CellView(viewModel: ViewModelCell() ,product: Product(image: "Card-image11",
                                                              title: "Курица маринованная",
                                                              sale: nil,
                                                              rating: 4.9,
                                                              oldPrice: 4.2,
                                                              currentPrice: 129.90,
                                                              amountName: "Кш",
                                                              minimumAmount: 1))
    }
}

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
        Image("Image")
            .resizable()
            .scaledToFit()
            .aspectRatio(contentMode: .fit)
    }
}


//MARK: Amount
extension CellView {
    var amountButton: some View {
        HStack(spacing: 0) {
            Button {
                viewModel.togglePiece()
            } label: {
                Text("Шт")
                    .foregroundColor(.black)
                    .frame(width: 77, height: 24)
            }
            .frame(width: 77, height: 24)
            .background(viewModel.pieceToggle ? Color.white : Color.clear)
            .cornerRadius(6)
            
            Button {
                viewModel.toggleKilo()
            } label: {
                Text("Кг")
                    .foregroundColor(.black)
                    .frame(width: 77, height: 24)
            }
            .frame(width: 77, height: 24)
            .background(viewModel.killoToggle ? Color.white : Color.clear)
            .cornerRadius(6)
        }
        .frame(width: 158, height: 28)
        .background(.gray.opacity(0.2))
        .cornerRadius(6)
        .animation(.spring())
    }
}

