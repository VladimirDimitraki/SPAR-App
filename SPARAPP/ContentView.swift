//
//  ContentView.swift
//  SPARAPP
//
//  Created by Melania Dababi on 8/8/24.
//

import SwiftUI

struct ContentView: View {
    let items = DataItemsInFirstView()
    let images = DataImages()
    
    var body: some View {
        VStack {
            ButtonSwitchView()
            ScrollView {
                LazyVGrid(columns: items.gridItem, spacing: 5) {
                    ForEach(images.arrayImages, id: \.self) {
                        CellView(images: $0)
                            .frame(width: 168, height: 278)
                            .background(Color.white)
                            .cornerRadius(20)
                            .shadow(radius: 3)
                    }
                }
                .padding(50)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
