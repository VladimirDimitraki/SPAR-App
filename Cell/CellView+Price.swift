//
//  CellView+Price.swift
//  SPARAPP
//
//  Created by Melania Dababi on 8/19/24.
//

import SwiftUI

//MARK: Price layer
extension CellView {
    var priceLayer: some View {
        VStack {
            //MARK: Actual Price
            GeometryReader { geo in
                HStack(alignment: .center, spacing: 0) {
                    //MARK: Big price
                    Text("99999")
                        .font(.system(size: 20))
                    //MARK: Cent price
                    Text("99")
                        .font(.system(size: 16))
                    
                    //MARK: Icon per amount
                    Image("PerAmountIcon")
                }
                .fontWeight(.bold)
                .kerning(-1)
                .padding(.trailing, 2)
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
