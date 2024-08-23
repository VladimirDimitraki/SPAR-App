//
//  ListProductsView.swift
//  SPARAPP
//
//  Created by Melania Dababi on 8/21/24.
//

import SwiftUI

struct ListProductsView: View {
    @ObservedObject var viewModel: ViewModel
    
    var body: some View {
        VStack {
            HStack {
                ZStack {
                    SwitchViewButton(viewModel: viewModel)
                }
                .frame(width: 40, height: 40)
            }
            .frame(width: 375, height: 44, alignment: .leading)
            
            Divider()
            
            ScrollView {
                ForEach(viewModel.getProducts(), id: \.self) { product in
                    ListView(viewModel: ListViewModel(product: product))
                }
            }
        }
        .navigationBarBackButtonHidden()
    }
}

struct ListProductsView_Previews: PreviewProvider {
    static var previews: some View {
        ListProductsView(viewModel: ViewModel())
    }
}
