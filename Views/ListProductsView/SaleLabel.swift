//
//  SaleLabel.swift
//  SPARAPP
//
//  Created by Melania Dababi on 8/21/24.
//

import SwiftUI

struct SaleLabel: View {
    @ObservedObject var viewModel: ListViewModel
    
    var body: some View {
        ZStack {
            HStack {
                Rectangle()
                    .cornerRadius(6, corners: [.topLeft, .topRight, .bottomRight])
                    .overlay {
                        Text("\(viewModel.product.labelSale?.rawValue ?? "")")
                            .foregroundColor(.white)
                            .font(.system(size: 10))
                    }
            }
            .frame(width: 84, height: 16)
        }
    }
}
