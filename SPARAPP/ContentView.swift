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
        VStack {
//            ButtonSwitchView()
            ScrollView {
                LazyVGrid(columns: [GridItem(.fixed(170)),
                                    GridItem(.fixed(170))
                ], spacing: 5) {
                    ForEach(viewModel.getProducts(), id: \.self) { product in
                        CellView(viewModel: CellViewModel(product: product))
                            .frame(width: 168, height: 278)
                            .background(Color.white)
                            .cornerRadius(20)
                            .shadow(color: Color("CsColor") ,radius: 8)
                    }
                }
                .padding(50)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(viewModel: ViewModel())
    }
}
