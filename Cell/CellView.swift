//
//  Cell.swift
//  SPARAPP
//
//  Created by Melania Dababi on 8/8/24.
//

import SwiftUI

struct CellView: View {
    var images: String
    @State private var kilograms: Float = 0
    @State private var piece: Int = 0
    @State private var swap = true
    @State private var basketButton = false
    @Namespace var buttonPosition
    
    
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
        CellView(images: "")
    }
}

//MARK: Image layer
extension CellView {
    var imageLayer: some View {
        ZStack {
            image
                .frame(width: 155, height: 155)
            HStack {
                Image("Vector1")
                    .font(.system(size: 12))
                    .foregroundColor(Color.yellow)
                Text("5.0")
                    .font(.system(size: 12))
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

//MARK: Price layer
extension CellView {
    var priceLayer: some View {
        VStack {
            //MARK: Actual Price
            GeometryReader { geo in
                HStack(alignment: .center, spacing: 0) {
                    Group {
                        //MARK: Big price
                        Text("9")
                            .font(.system(size: 20))
                        //MARK: Cent price
                        Text("99")
                            .font(.system(size: 16))
                    }
                    .fontWeight(.bold)
                    .kerning(-1)
                    .padding(.trailing, 2)
                    //MARK: Icon per amount
                    Image("PerAmountIcon")
                }
                
//                .frame(width: geo.size.width * 1.5, height: geo.size.height, alignment: .leading)
            }
            
            //MARK: Old Price
            HStack {
                Text("199,0")
                    .strikethrough()
                    .foregroundColor(.gray)
                    .font(.system(size: 12))
            }
            .frame(width: 67, alignment: .leading)
        }
        .frame(width: 71, height: 36, alignment: .topTrailing)
    }
}

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
                if basketButton {
                    amountButton
                }
            }
            .frame(width: 110, height: 18)
            //MARK: Price and Button layer
            HStack {
                if basketButton {
                    animatedBasketButton
                } else {
                    priceLayer
                        .padding(9)
                    Spacer()
                    buttonLayer
                        .padding(4)
                }
                
            }
            .frame(width: 168, height: 44)
        }
        .frame(width: 168, height: 110)
    }
}

//MARK: Button layer
extension CellView {
    var buttonLayer: some View {
        HStack {
            Button {
                basketButton.toggle()
            } label: {
                ZStack {
                    Rectangle()
                        .frame(width: 48, height: 36)
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
    }
}

//MARK: Animated Button
extension CellView {
    var animatedBasketButton: some View {
        Button {
            basketButton.toggle()
        } label: {
            HStack {
                
                Rectangle()
                    .fill(Color(red: 21 / 255, green: 183 / 255, blue: 66 / 255))
                    .cornerRadius(40)
                    .overlay {
                        HStack {
                            Button {
                                if swap {
                                    if kilograms < 0.1 {
                                        basketButton.toggle()
                                    }
                                    kilograms -= (kilograms >= 0.1) ? 0.1 : 0
                                }
                                else {
                                    if piece < 1 {
                                        basketButton.toggle()
                                    }
                                    piece -= (piece > 0) ? 1 : 0
                                }
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
                                let amount: String = swap ? "\(kilograms) кг" : "\(piece) шт"
                                Text("\(amount)")
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
                                if swap {
                                    kilograms += 0.1
                                }
                                else {
                                    piece += 1
                                }
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
            }
            .frame(width: 160, height: 36)
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

//MARK: Temp layer
//extension CellView {
//    var actionLayer: some View {
//        VStack{
//        }
//        .frame(width: 32, height: 64)
//    }
//}

extension CellView {
    var image: some View {
        Image(images)
            .resizable()
            .scaledToFit()
            .aspectRatio(contentMode: .fit)
    }
}


//MARK: Amount
extension CellView {
    var amountButton: some View {
        HStack(spacing: 0) {
            if swap {
                //MARK: Right Button
                Button {
                    swap.toggle()
                } label: {
                    HStack(spacing: 0) {
                        Rectangle()
                            .frame(width: 77, height: 24)
                            .foregroundColor(.clear)
                            .matchedGeometryEffect(id: "kilo" , in: buttonPosition)
                            .cornerRadius(6)
                            .overlay {
                                Text("Шт")
                                    .foregroundColor(.gray)
                            }
                        Rectangle()
                            .frame(width: 77, height: 24)
                            .foregroundColor(.white)
                            .cornerRadius(6)
                            .overlay {
                                Text("Кг")
                                    .foregroundColor(.black)
                            }
                    }
                    .frame(width: 158, height: 28)
                }
                .frame(width: 158, height: 28, alignment: .leading)
            } else {
                
                //MARK: Left Button
                Button {
                    swap.toggle()
                } label: {
                    HStack(spacing: 0) {
                        Rectangle()
                            .frame(width: 77, height: 24)
                            .foregroundColor(.white)
                            .matchedGeometryEffect(id: "piece" , in: buttonPosition)
                            .cornerRadius(6)
                            .overlay {
                                Text("Шт")
                                    .foregroundColor(.black)
                            }
                        Rectangle()
                            .frame(width: 77, height: 24)
                            .foregroundColor(.clear)
                            .cornerRadius(6)
                            .overlay {
                                Text("Кг")
                                    .foregroundColor(.gray)
                            }
                    }
                    .frame(width: 158, height: 28)
                }
                .frame(width: 158, height: 28, alignment: .trailing)
            }
        }
        .frame(width: 158, height: 28)
        .background(.gray.opacity(0.2))
        .cornerRadius(6)
    }
}
