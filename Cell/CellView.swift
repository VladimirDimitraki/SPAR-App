//
//  Cell.swift
//  SPARAPP
//
//  Created by Melania Dababi on 8/8/24.
//

import SwiftUI

struct CellView: View {
    var images: String
    @State private var amimatedPosition: ButtonPosition = .kilogram
    
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
                HStack(spacing: 0) {
                    //MARK: Big price
                    Text("99999")
                        .fontWeight(.bold)
                        .font(.system(size: 20))
                    //MARK: Cent price
                    Text("99")
                        .font(.system(size: 16))
                        .fontWeight(.bold)
                    //MARK: Icon per amount
                    Image("PerAmountIcon")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 20, height: 20)
                }
                .frame(width: geo.size.width * 1.5, height: geo.size.height, alignment: .leading)
            }
            
            //MARK: Old Price
            HStack {
                Text("199,0")
                    .strikethrough()
                    .foregroundColor(.gray)
                    .font(.system(size: 12))
            }
            .frame(width: 67, height: 14, alignment: .leading)
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
                amountButton
            }
            .frame(width: 110, height: 18)
            //MARK: Price and Button layer
            HStack {
                priceLayer
                    .frame(width: 71, height: 36, alignment: .leading)
                buttonLayer
                    .frame(width: 71, height: 36, alignment: .trailing)
            }
            .frame(width: 168, height: 44, alignment: .bottom)
        }
        .frame(width: 168, height: 110)
    }
}

//MARK: Button layer
extension CellView {
    var buttonLayer: some View {
        Button {
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
                .padding()
            }
            .frame(width: 48, height: 36)
        }
        .foregroundColor(Color(red: 21 / 255, green: 183 / 255, blue: 66 / 255))
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
//
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
        HStack {
            
            Button {
            } label: {
                HStack {}
                    .frame(width: 77, height: 24)
            }
            .animation(.easeInOut, value: amimatedPosition)
            
            Button {
            } label: {
                HStack {
                    animatedButtonRect
                }
                    .frame(width: 77, height: 24)
            }
            .animation(.easeInOut, value: amimatedPosition)
        }
        .frame(width: 158, height: 28)
        .background(Color(UIColor.lightGray))
        .opacity(0.2)
        .cornerRadius(6)
    }
}

extension CellView {
    var animatedButtonRect: some View {
        Rectangle()
            .fill(.red)
            .frame(width: 75, height: 22)
    }
}
