//
//  ContentView.swift
//  SPARAPP
//
//  Created by Melania Dababi on 8/8/24.
//

import SwiftUI

struct ContentView: View {
    @StateObject var viewModel = ViewModel()
    
    var body: some View {
        NavigationView {
            VStack {
                HStack {
                    NavigationLink(destination: ListProductsView(viewModel: viewModel)) {
                        SwitchViewButton(viewModel: viewModel)
                    }
                }
                .frame(width: 375, height: 44, alignment: .leading)
                
                Divider()
                
                ScrollView {
                    grid
                }
            }
        }
    }
}

extension ContentView {
    var grid: some View {
        LazyVGrid(columns: [GridItem(.fixed(170), spacing: 5),
                            GridItem(.fixed(170), spacing: 5)
                           ], spacing: 5) {
            ForEach(viewModel.getProducts(), id: \.self) { product in
                CellView(viewModel: CellViewModel(product: product))
                    .frame(width: 168, height: 278)
                    .background(Color.white)
                    .cornerRadius(20)
                    .shadow(color: Color("CsColor") ,radius: 4)
            }
        }
                           .padding(9)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(viewModel: ViewModel())
    }
}
