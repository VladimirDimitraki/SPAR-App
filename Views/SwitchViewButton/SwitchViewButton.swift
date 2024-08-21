//
//  SwitchViewButton.swift
//  SPARAPP
//
//  Created by Melania Dababi on 8/21/24.
//

import SwiftUI

struct SwitchViewButton: View {
    var body: some View {
        Button {
            
        } label: {
            Rectangle()
                .frame(width: 40, height: 40)
                .cornerRadius(12)
                .foregroundColor(Color(red: 241 / 255, green: 241 / 255, blue: 241 / 255))
                .overlay {
                    Image("FourRectAngle")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 16)
                }
        }
    }
}

struct SwitchViewButton_Previews: PreviewProvider {
    static var previews: some View {
        SwitchViewButton()
    }
}
