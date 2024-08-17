//
//  rreeerververe.swift
//  SPARAPP
//
//  Created by Melania Dababi on 8/17/24.
//

import SwiftUI

struct rreeerververe: View {
    
    @State private var state = false
    
    var body: some View {
        ZStack {
            VStack {
                Button {
                    state.toggle()
                } label: {
                    Text("1")
                }
                
                Button {
                    state.toggle()
                } label: {
                    Text("2")
                }
                
                ZStack {
                    Rectangle()
                        .frame(width: 100, height: 100)
                        .frame(maxWidth: .infinity, alignment: state ? .leading : .trailing)
                        .background(.green)
                }
            }
        }
        .animation(.spring())
    }
}

struct rreeerververe_Previews: PreviewProvider {
    static var previews: some View {
        rreeerververe()
    }
}
