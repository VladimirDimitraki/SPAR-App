//
//  CellImage.swift
//  SPARAPP
//
//  Created by Melania Dababi on 8/12/24.
//

import SwiftUI

struct CellImage: View {
    
    var body: some View {

            Image("Image")
                .resizable()
                .scaledToFit()
                .aspectRatio(contentMode: .fit)
//                .overlay(alignment: .topLeading) {
//                    RoundedRectangle(cornerRadius: 6)
//                        .frame(width: 84, height: 16)
//                        .foregroundColor(.red)
//                }

    }
}

struct CellImage_Previews: PreviewProvider {
    static var previews: some View {
        CellImage()
    }
}
